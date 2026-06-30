<!-- cSpell:disable -->

1. En Visual Studio Code, instalar la extensión Live Server de Ritwick Dey y PostgreSQL de Microsoft
    https://marketplace.visualstudio.com/items?itemName=ritwickdey.LiveServer
    https://marketplace.visualstudio.com/items?itemName=ms-ossdata.vscode-pgsql

2. Crear un entorno virtual propio.
    python -m venv .venv

3. Activar el entorno.
    .\.venv\Scripts\Activate.ps1

4. Instalar las dependencias.
    python -m pip install --upgrade pip
    python -m pip install -r backend\requirements.txt

5. Crear su archivo de configuración de entorno.
    Copy-Item backend\.env.example backend\.env

6. Modificar la sección "contrasenia" del .env con tu contraseña de PostgreSQL.

7. Con PostgreSQL, crear una base de datos. Se recomienda 'proyecto_asistencia'.
    Por ejemplo: 
    CREATE DATABASE proyecto_asistencia;

8. Vincular la base de datos al proyecto:
    a. En el panel izquierdo en Visual Studio, hacer click en PostgreSQL -> Add Conection.
    b. Completar los campos siguientes campos:
        - Nombre del servidor: 'localhost'
        - Nombre de usuario: 'postgres'
        - Contraseña: tu contraseña de PostgreSQL
        - Nombre de la base de datos: el nombre que le pusiste a la base de datos que creaste en el paso anterior
        - Nombre de conexión: un nombre para la conexión. Se recomienda 'proyecto_asistencia_connection'.
    c. Dejar los demás campos como están por defecto y guardar.

9. Conectar proyecto a la base de datos:
    a. Abrir un archivo cualquiera de la carpeta database.
    b. En la parte de abajo de la interfaz de Visual Studio, aparece un cartel que indica que SQL está 'disconnected' con un círculo rojo. Hacer click ahí.
    c. Seleccionar la conexión creada en el paso anterior.

10. Carga lógica de la base de datos:
    Para cada archivo dentro de la carpeta database:
    a. Abir el archivo.
    b. Hacer click en una línea cualquiera.
    c. Ejecutar: CTRL + SHIFT + E

11.


