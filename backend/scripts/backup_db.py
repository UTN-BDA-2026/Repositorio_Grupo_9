"""
backup_db.py

Genera un backup completo de la base de datos usando pg_dump.

Uso:
    python backend/scripts/backup_db.py

Requiere que pg_dump esté disponible. En Windows normalmente está en:
    C:\\Program Files\\PostgreSQL\\<version>\\bin\\pg_dump.exe

Si no está en el PATH del sistema, agregá esta línea a tu .env (sin comillas,
con la barra normal "/" o doble barra invertida "\\\\"):
    PG_BIN_DIR=C:/Program Files/PostgreSQL/16/bin

El archivo se guarda en la carpeta "backups/" (en la raíz del proyecto),
con un nombre que incluye fecha y hora, en formato "custom" de pg_dump
(comprimido, y restaurable con pg_restore).
"""

import os
import subprocess
import sys
from datetime import datetime
from pathlib import Path
from urllib.parse import urlparse

from dotenv import load_dotenv

load_dotenv()

# Carpeta raíz del proyecto = dos niveles arriba de este archivo (backend/scripts/ -> raíz)
RAIZ_PROYECTO = Path(__file__).resolve().parent.parent.parent
CARPETA_BACKUPS = RAIZ_PROYECTO / "backups"


def obtener_datos_conexion() -> dict:
    """Lee DATABASE_URL del .env y la separa en host, puerto, usuario, password y nombre de la BD."""
    database_url = os.getenv("DATABASE_URL")
    if not database_url:
        print("ERROR: no se encontró DATABASE_URL en el archivo .env.")
        sys.exit(1)

    partes = urlparse(database_url)
    return {
        "host": partes.hostname or "localhost",
        "puerto": str(partes.port or 5432),
        "usuario": partes.username or "postgres",
        "password": partes.password or "",
        "nombre_db": partes.path.lstrip("/"),
    }


def obtener_ruta_pg_dump() -> str:
    """Devuelve la ruta al ejecutable pg_dump, usando PG_BIN_DIR del .env si está definido."""
    bin_dir = os.getenv("PG_BIN_DIR")
    if bin_dir:
        ejecutable = "pg_dump.exe" if os.name == "nt" else "pg_dump"
        return str(Path(bin_dir) / ejecutable)
    return "pg_dump"  # asumimos que está en el PATH


def main():
    datos = obtener_datos_conexion()
    pg_dump = obtener_ruta_pg_dump()

    CARPETA_BACKUPS.mkdir(exist_ok=True)
    timestamp = datetime.now().strftime("%Y%m%d_%H%M%S")
    archivo_salida = CARPETA_BACKUPS / f"backup_{datos['nombre_db']}_{timestamp}.dump"

    comando = [
        pg_dump,
        "-h", datos["host"],
        "-p", datos["puerto"],
        "-U", datos["usuario"],
        "-F", "c",          # formato "custom": comprimido y restaurable con pg_restore
        "-b",                # incluir blobs (large objects), si los hubiera
        "-v",                # verbose, para ver progreso
        "-f", str(archivo_salida),
        datos["nombre_db"],
    ]

    # PGPASSWORD evita que pg_dump pregunte la contraseña interactivamente
    env = os.environ.copy()
    env["PGPASSWORD"] = datos["password"]

    print(f"Generando backup de '{datos['nombre_db']}' en: {archivo_salida}")
    try:
        resultado = subprocess.run(comando, env=env, capture_output=True, text=True)
    except FileNotFoundError:
        print(
            "ERROR: no se encontró el comando 'pg_dump'.\n"
            "Verificá que PostgreSQL esté instalado y que pg_dump esté en el PATH,\n"
            "o agregá PG_BIN_DIR=<ruta a la carpeta bin de PostgreSQL> en tu .env."
        )
        sys.exit(1)

    if resultado.returncode != 0:
        print("ERROR al generar el backup:")
        print(resultado.stderr)
        sys.exit(1)

    print(f"Backup generado exitosamente: {archivo_salida}")
    print(f"Tamaño: {archivo_salida.stat().st_size / 1024:.1f} KB")


if __name__ == "__main__":
    main()
