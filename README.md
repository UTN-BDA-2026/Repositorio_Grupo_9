# Sistema de Asistencia Escolar — Grupo 9

Sistema de registro y gestión de asistencias escolares con escaneo de DNI, desarrollado con FastAPI, PostgreSQL y HTML/CSS/JS.

---

## Requisitos previos

- [Python 3.10+](https://www.python.org/downloads/)
- [PostgreSQL](https://www.postgresql.org/download/)
- [Visual Studio Code](https://code.visualstudio.com/)
  - Extensión [Live Server](https://marketplace.visualstudio.com/items?itemName=ritwickdey.LiveServer) de Ritwick Dey
  - Extensión [PostgreSQL](https://marketplace.visualstudio.com/items?itemName=ms-ossdata.vscode-pgsql) de Microsoft

---

## Instalación

### 1. Crear y activar el entorno virtual

```powershell
py -m venv .venv
.\.venv\Scripts\Activate.ps1
```

### 2. Instalar las dependencias

```powershell
python -m pip install --upgrade pip
python -m pip install -r requirements.txt
```

### 3. Configurar las variables de entorno

```powershell
Copy-Item backend\.env.example backend\.env
```

Abrí el archivo `backend/.env` y reemplazá `contrasenia` con tu contraseña de PostgreSQL.

---

## Configuración de la base de datos

### 4. Crear la base de datos

Desde el cliente de PostgreSQL que prefieras, ejecutá:

```sql
CREATE DATABASE proyecto_asistencia;
```

### 5. Conectar el proyecto a la base de datos en VS Code

1. En el panel izquierdo, hacé click en **PostgreSQL → Add Connection**.
2. Completá los siguientes campos:
   | Campo | Valor |
   |---|---|
   | Nombre del servidor | `localhost` |
   | Nombre de usuario | `postgres` |
   | Contraseña | tu contraseña de PostgreSQL |
   | Nombre de la base de datos | el nombre elegido en el paso anterior |
   | Nombre de conexión | `proyecto_asistencia_connection` (recomendado) |
3. Dejá los demás campos con sus valores por defecto y guardá.

### 6. Cargar el esquema y la lógica

Para cada archivo dentro de la carpeta `database/` (`1_esquema.sql`, `2_indices.sql`, `3_validators.sql`, `4_procedures.sql`):

1. Abrí el archivo en VS Code.
2. Si en la barra inferior aparece **PGSQL Disconnected** (círculo rojo), hacé click ahí y seleccioná la conexión creada en el paso anterior.
3. Hacé click en cualquier línea del archivo y ejecutá con **Ctrl + Shift + E**.

> **Nota:** puede ser necesario reconectar (repetir el paso 2) al abrir cada archivo nuevo.

### 7. Insertar datos de prueba

Repetí el mismo procedimiento del paso anterior para los siguientes archivos dentro de `backend/scripts/`:

- `seed_db.sql`
- `seed_excepciones.sql`
- `seed_asistencias.sql`

> **Nota:** la carga de datos puede demorar varios minutos.

---

## Inicio del servidor

Desde una terminal con el entorno virtual activado, ejecutá:

```powershell
python -m uvicorn backend.server_fastapi:app --reload
```

---

## Uso de la aplicación

Con el servidor corriendo, abrí cualquiera de las siguientes interfaces desde la carpeta `frontend/`:

- **Dashboard (para preceptores):** click derecho sobre `dashboard.html` → *Open with Live Server*
- **Escáner de DNI:** click derecho sobre `scanner.html` → *Open with Live Server*

---

## Configuración del escaneo de DNI *(opcional)*

Solo necesario si se quiere probar el escaneo físico con el celular.

1. Instalá en un celular Android la app [**Scan-IT to Office**](https://play.google.com/store/apps/details?id=com.tecit.android.bluescanner.office).
2. Instalá en la computadora el [**Smart Keyboard Wedge**](https://www.tec-it.com/es/download/download-feedback/DownloadRegistration.aspx?param=id%3d208%3bfilename%3dWindows%2fSTO-Tools_SmartKeyboardWedge_2_2_0.exe%3bdownloadLink%3ddownload%2fWindows%2fSTO-Tools_SmartKeyboardWedge_2_2_0.exe).
3. Abrí ambas aplicaciones.
4. En la app del celular, tocá el ícono de **Wi-Fi amarillo** en la parte inferior.
5. Seleccioná **Aplicaciones de escritorio → Escanear Código QR**.
6. Escaneá el código que muestra la app de escritorio.
7. En la app de escritorio, ir a **Options → Append key(s) after data → Return / Enter**.
8. Abrí `scanner.html` con Live Server, mantené la ventana en foco y escaneá un DNI con el celular.

> **Nota:** si el DNI escaneado no está registrado como alumno en el sistema, no será reconocido.
