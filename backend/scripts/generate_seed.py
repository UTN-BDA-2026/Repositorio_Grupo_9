import os
import random

# Listas de muestra
nombres_masc = ["Mateo", "Lucas", "Joaquín", "Benjamín", "Santino", "Franco", "Adriel", "Bautista", "Thiago", "Tomás"]
nombres_fem = ["Valentina", "Sofía", "Martina", "Camila", "Emma", "Isabella", "Catalina", "Mia", "Julieta", "Zoe"]
apellidos = ["García", "López", "Martínez", "Rodríguez", "Fernández", "Gómez", "Velazco", "Gonzales", "Díaz", "Pérez"]

# Diccionario inteligente de DNIs
dnis_por_anio = {
    1: 53000000, 
    2: 51000000, 
    3: 49000000, 
    4: 47000000, 
    5: 45000000  
}

legajo_actual = 10000

# ¡NUEVO! Aquí guardaremos en memoria a quién inscribir en dónde
memoria_inscripciones = []

directorio_actual = os.path.dirname(os.path.abspath(__file__))
ruta_archivo_sql = os.path.join(directorio_actual, "seed_db.sql")

with open(ruta_archivo_sql, "w", encoding="utf-8") as file:
    file.write("-- ==========================================\n")
    file.write("-- SCRIPT GENERADO AUTOMÁTICAMENTE\n")
    file.write("-- ==========================================\n\n")
    
    file.write("-- 1. (AQUÍ DEBES PEGAR EL BLOQUE DE LOS 25 CURSOS)\n\n")
    
    # ---------------------------------------------------------
    # GENERACIÓN DE ALUMNOS ALEATORIOS
    # ---------------------------------------------------------
    file.write("-- 2. Insertar 625 Alumnos Aleatorios Realistas\n")
    file.write("INSERT INTO Alumnos (dni, nombre, apellido, estado, fecha_nacimiento, sexo, nro_legajo, fecha_ingreso, curso_actual) VALUES\n")

    for i in range(625):
        sexo = random.choice(["MASCULINO", "FEMENINO"])
        nombre = random.choice(nombres_masc) if sexo == "MASCULINO" else random.choice(nombres_fem)
        apellido = random.choice(apellidos)
        
        curso_elegido = random.randint(1, 25)
        anio_escolar = ((curso_elegido - 1) // 5) + 1
        
        dni_alumno = dnis_por_anio[anio_escolar]
        dnis_por_anio[anio_escolar] += 1
        
        anio_nacimiento = 2026 - 12 - anio_escolar
        mes_nac = random.randint(1, 12)
        dia_nac = random.randint(1, 28) 
        fecha_nac = f"{anio_nacimiento}-{mes_nac:02d}-{dia_nac:02d}"
        
        anio_ingreso = 2026 - anio_escolar + 1
        dia_ingreso = random.randint(1, 15) 
        fecha_ingreso = f"'{anio_ingreso}-03-{dia_ingreso:02d}'"
        
        legajo_actual += 1
        terminador = ";" if i == 624 else ","
        
        linea_sql = f"({dni_alumno}, '{nombre}', '{apellido}', 'ACTIVO', '{fecha_nac}', '{sexo}', {legajo_actual}, {fecha_ingreso}, {curso_elegido}){terminador}\n"
        file.write(linea_sql)
        
        # ¡Guardamos el dato para la tabla de inscripciones!
        memoria_inscripciones.append((dni_alumno, curso_elegido))


    # ---------------------------------------------------------
    # INSERCIÓN DE LOS PROTAGONISTAS
    # ---------------------------------------------------------
    file.write("\n-- 3. Insertar Alumnos de Prueba (Franco y Adriel en 5to Año - Curso 23)\n")
    file.write("INSERT INTO Alumnos (dni, nombre, apellido, estado, fecha_nacimiento, sexo, nro_legajo, fecha_ingreso, curso_actual) VALUES\n")
    
    # Asignados a 5to C (Doble Turno) - Ingresaron en 2022
    file.write("(45142092, 'Franco Valentín', 'Velazco', 'ACTIVO', '2008-05-10', 'MASCULINO', 99001, '2022-03-01', 23),\n")
    file.write("(45359643, 'Adriel Alonso', 'Gonzales', 'ACTIVO', '2008-08-15', 'MASCULINO', 99002, '2022-03-01', 23);\n\n")
    
    # También los guardamos en memoria para inscribirlos
    memoria_inscripciones.append((45142092, 23))
    memoria_inscripciones.append((45359643, 23))


    # ---------------------------------------------------------
    # GENERACIÓN DE INSCRIPCIONES (Para los 627 alumnos)
    # ---------------------------------------------------------
    file.write("-- 4. Inscribir a todos los alumnos en el Ciclo Lectivo 2026\n")
    file.write("INSERT INTO Inscripciones (dni_alumno, id_curso, ciclo_lectivo, fecha_inscripcion) VALUES\n")
    
    total_inscripciones = len(memoria_inscripciones)
    for index, datos in enumerate(memoria_inscripciones):
        dni = datos[0]
        curso = datos[1]
        
        terminador = ";" if index == total_inscripciones - 1 else ","
        
        # Simulamos que todos se inscribieron a finales de febrero de 2026
        dia_inscripcion = random.randint(20, 28)
        linea_inscripcion = f"({dni}, {curso}, 2026, '2026-02-{dia_inscripcion}'){terminador}\n"
        file.write(linea_inscripcion)

print("¡ÉXITO TOTAL! 🚀 Tu archivo seed_db.sql ahora contiene los Alumnos, los Protagonistas en 5to Año, ¡y todas sus Inscripciones automáticas!")