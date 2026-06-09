import customtkinter as ctk
import socket
import threading
import time
import json

class EscanerDNI:
    def __init__(self, app, on_dni_detectado=None):
        self.app = app
        self.puerto = 4243
        self.servidor = None
        self.corriendo = True
        self.label_estado = None
        self.texto_info = None
        self.detalle_info = None
        self.on_dni_detectado = on_dni_detectado
        
    def procesar_escaneo(self, texto_escaneado):
        """Procesa el texto escaneado desde cualquier fuente"""
        try:
            texto_escaneado = texto_escaneado.strip()

            if texto_escaneado:
                self.actualizar_pantalla(f"📥 Recibido: {texto_escaneado}", "info")

            # Si el escaneo tiene separadores tipo PDF417 (ej.: '@'), mostramos
            # y devolvemos todos los campos para que el usuario decida qué es qué.
            if '@' in texto_escaneado:
                datos = [c.strip() for c in texto_escaneado.split('@')]
                print(f"📊 Datos recibidos ({len(datos)} campos): {datos}")

                # Construimos un dict con los campos indexados
                parsed = {
                    'raw': texto_escaneado,
                    'fields': datos
                }

                # Intentamos encontrar el DNI: primer campo numérico largo (7-10 dígitos)
                dni = None
                for campo in datos:
                    s = campo.strip()
                    if s.isdigit() and 7 <= len(s) <= 10:
                        dni = s
                        parsed['dni'] = dni
                        break

                # Mostrar cada campo en el log para inspección
                for i, campo in enumerate(datos):
                    self.actualizar_pantalla(f"  [{i}] {campo}", "info")

                if dni:
                    mensaje = f"✅ ¡DNI detectado en campos!: {dni}"
                    print(mensaje)
                    self.actualizar_pantalla(mensaje, "success")
                    if self.on_dni_detectado:
                        self.on_dni_detectado(dni, texto_escaneado)
                else:
                    mensaje = f"⚠️  No se encontró un DNI claro en los campos"
                    print(mensaje)
                    self.actualizar_pantalla(mensaje, "error")

                # Mostrar parsed en la GUI (si existe)
                try:
                    self.actualizar_detalle(parsed)
                except Exception:
                    pass

                return parsed

            # Si no tiene separadores, mantenemos la lógica anterior: intentar extraer
            # un número plano que pueda ser DNI
            datos = [texto_escaneado]
            print(f"📊 Datos recibidos (1 campos): {datos}")

            dni = texto_escaneado if texto_escaneado.isdigit() and 7 <= len(texto_escaneado) <= 10 else None

            if dni:
                mensaje = f"✅ ¡DNI capturado!: {dni}"
                print(mensaje)
                self.actualizar_pantalla(mensaje, "success")
                if self.on_dni_detectado:
                    self.on_dni_detectado(dni, texto_escaneado)
            else:
                mensaje = f"⚠️  No se pudo extraer DNI. Datos: {texto_escaneado[:50]}"
                print(mensaje)
                self.actualizar_pantalla(mensaje, "error")
                try:
                    # Mostrar el raw en la vista detalle
                    self.actualizar_detalle({'raw': texto_escaneado, 'fields': [texto_escaneado]})
                except Exception:
                    pass
            
            # =========================================================
            # AQUÍ ES DONDE LLAMARÍAMOS A TU BASE DE DATOS POSTGRESQL
            # if dni:
            #     registrar_fichada(dni)
            # =========================================================

            return dni
            
        except Exception as e:
            mensaje = f"❌ Error al leer el código: {e}"
            print(mensaje)
            self.actualizar_pantalla(mensaje, "error")
            return None
    
    def actualizar_pantalla(self, mensaje, tipo="info"):
        """Actualiza la pantalla de forma segura desde el thread del servidor"""
        if self.texto_info:
            self.app.after(0, lambda: self._actualizar_gui(mensaje, tipo))

    def actualizar_detalle(self, parsed):
        """Muestra el diccionario parseado en la caja de detalle (GUI thread safe)."""
        if not self.detalle_info:
            return

        try:
            texto = json.dumps(parsed, ensure_ascii=False, indent=2)
        except Exception:
            texto = str(parsed)

        self.app.after(0, lambda: self._actualizar_detalle_gui(texto))

    def _actualizar_detalle_gui(self, texto):
        self.detalle_info.configure(state="normal")
        self.detalle_info.delete("0.0", "end")
        self.detalle_info.insert("0.0", texto)
        self.detalle_info.configure(state="disabled")
        self.detalle_info.see("0.0")
    
    def _actualizar_gui(self, mensaje, tipo):
        """Actualiza la GUI en el thread principal"""
        self.texto_info.configure(state="normal")
        self.texto_info.insert("0.0", f"{mensaje}\n")
        
        if tipo == "success":
            self.texto_info.tag_config("success", foreground="green")
            self.texto_info.tag_add("success", "0.0", "1.0")
        elif tipo == "error":
            self.texto_info.tag_config("error", foreground="red")
            self.texto_info.tag_add("error", "0.0", "1.0")
        
        self.texto_info.configure(state="disabled")
        self.texto_info.see("0.0")
    
    def escuchar_servidor(self):
        """Thread que escucha conexiones de Barcode to PC por TCP"""
        try:
            self.servidor = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
            self.servidor.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)
            self.servidor.bind(('0.0.0.0', self.puerto))
            self.servidor.listen(5)

            print(f"✅ Servidor escuchando en puerto {self.puerto}...")
            self.actualizar_pantalla(f"Servidor listo en puerto {self.puerto}", "info")

            while self.corriendo:
                try:
                    self.servidor.settimeout(1)
                    cliente, direccion = self.servidor.accept()
                    print(f"📱 Conexión recibida de {direccion}")

                    # Recibe el código escaneado completo
                    partes = []
                    cliente.settimeout(1)
                    while True:
                        try:
                            bloque = cliente.recv(1024)
                            if not bloque:
                                break
                            partes.append(bloque)
                            if len(bloque) < 1024:
                                break
                        except socket.timeout:
                            break

                    datos = b"".join(partes).decode('utf-8', errors='ignore').strip()

                    if datos:
                        print(f"📊 Datos recibidos (RAW): {repr(datos)}")
                        print(f"📊 Largo: {len(datos)} caracteres")
                        self.procesar_escaneo(datos)
                    else:
                        self.actualizar_pantalla("⚠️ No llegó texto desde Barcode to PC", "error")

                    cliente.close()

                except socket.timeout:
                    continue
                except Exception as e:
                    print(f"❌ Error en conexión: {e}")

        except Exception as e:
            print(f"❌ Error del servidor: {e}")
            self.actualizar_pantalla(f"Error del servidor: {e}", "error")
    
    def detener(self):
        """Detiene el servidor"""
        self.corriendo = False
        if self.servidor:
            try:
                self.servidor.close()
            except Exception:
                pass


def crear_interfaz():
    """Crea la interfaz gráfica"""
    app = ctk.CTk()
    app.geometry("600x500")
    app.title("Control de Acceso - DNI Scanner")
    
    def on_dni_detectado(dni, texto_completo):
        print(f"🔗 DNI entregado al programa: {dni}")

    # Instancia del escáner
    escaner = EscanerDNI(app, on_dni_detectado=on_dni_detectado)
    
    # Título
    titulo = ctk.CTkLabel(app, text="🔐 Sistema de Escaneo de DNI", font=("Arial", 20, "bold"))
    titulo.pack(pady=15)
    
    # Subtítulo con instrucciones
    info_frame = ctk.CTkFrame(app, fg_color="transparent")
    info_frame.pack(pady=10, padx=20, fill="x")
    
    subtitulo = ctk.CTkLabel(
        info_frame, 
        text="Escaneando desde: Barcode to PC\nPuerto: 4243", 
        font=("Arial", 12),
        text_color="cyan"
    )
    subtitulo.pack()
    
    # Área de log/información
    ctk.CTkLabel(app, text="📋 Registro de Escaneos:", font=("Arial", 12, "bold")).pack(padx=20, anchor="w")

    # Campo de prueba para el caso en que Barcode to PC funcione como teclado
    ctk.CTkLabel(
        app,
        text="Si la app manda el dato como teclado, hacé clic acá y escaneá:",
        font=("Arial", 11)
    ).pack(padx=20, pady=(8, 2), anchor="w")

    campo_prueba = ctk.CTkEntry(app, placeholder_text="Pegá o escaneá acá si estás en modo teclado")
    campo_prueba.pack(padx=20, pady=(0, 10), fill="x")

    def procesar_campo_prueba(event=None):
        texto = campo_prueba.get().strip()
        if texto:
            escaner.procesar_escaneo(texto)
            campo_prueba.delete(0, "end")

    campo_prueba.bind("<Return>", procesar_campo_prueba)
    app.after(200, campo_prueba.focus_set)
    
    texto_info = ctk.CTkTextbox(app, height=250, font=("Arial", 10))
    texto_info.pack(padx=20, pady=10, fill="both", expand=True)
    texto_info.configure(state="disabled")
    
    escaner.texto_info = texto_info

    # Caja de detalle para mostrar parsed JSON cuando haya PDF417
    ctk.CTkLabel(app, text="🔍 Detalle del escaneo:", font=("Arial", 12, "bold")).pack(padx=20, anchor="w")
    detalle_box = ctk.CTkTextbox(app, height=120, font=("Arial", 10))
    detalle_box.pack(padx=20, pady=(4, 10), fill="both")
    detalle_box.configure(state="disabled")
    escaner.detalle_info = detalle_box
    
    # Botones
    botones_frame = ctk.CTkFrame(app, fg_color="transparent")
    botones_frame.pack(pady=15, fill="x", padx=20)
    
    def limpiar_log():
        texto_info.configure(state="normal")
        texto_info.delete("0.0", "end")
        texto_info.configure(state="disabled")
    
    btn_limpiar = ctk.CTkButton(botones_frame, text="🗑️  Limpiar Log", command=limpiar_log)
    btn_limpiar.pack(side="left", padx=5)

    # Botón para poner foco en el campo de escaneo (útil en modo teclado)
    btn_foco = ctk.CTkButton(botones_frame, text="🎯 Poner foco en campo", command=lambda: campo_prueba.focus_set())
    btn_foco.pack(side="left", padx=5)
    
    # Etiqueta de estado
    etiqueta_estado = ctk.CTkLabel(app, text="🟢 Sistema activo", font=("Arial", 11, "bold"), text_color="green")
    etiqueta_estado.pack(pady=5)
    escaner.label_estado = etiqueta_estado
    
    # Inicia el servidor en un thread separado
    thread_servidor = threading.Thread(target=escaner.escuchar_servidor, daemon=True)
    thread_servidor.start()
    
    # Manejo de cierre
    def al_cerrar():
        escaner.detener()
        app.destroy()
    
    app.protocol("WM_DELETE_WINDOW", al_cerrar)
    
    return app


if __name__ == "__main__":
    app = crear_interfaz()
    app.mainloop()
