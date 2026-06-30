"""
restore_db.py

Restaura la base de datos a partir de un backup generado por backup_db.py.

Uso:
    python backend/scripts/restore_db.py
        -> restaura el backup más reciente de la carpeta backups/

    python backend/scripts/restore_db.py backups/backup_proyecto_asistencia_20260627_120000.dump
        -> restaura ese archivo puntual

ADVERTENCIA: esto reemplaza los datos actuales de la base (usa --clean,
es decir borra y recrea los objetos antes de restaurar). Pensado para
un entorno de desarrollo/pruebas, no para producción.
"""

import os
import subprocess
import sys
from pathlib import Path
from urllib.parse import urlparse

from dotenv import load_dotenv

load_dotenv()

RAIZ_PROYECTO = Path(__file__).resolve().parent.parent.parent
CARPETA_BACKUPS = RAIZ_PROYECTO / "backups"


def obtener_datos_conexion() -> dict:
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


def obtener_ruta_pg_restore() -> str:
    bin_dir = os.getenv("PG_BIN_DIR")
    if bin_dir:
        ejecutable = "pg_restore.exe" if os.name == "nt" else "pg_restore"
        return str(Path(bin_dir) / ejecutable)
    return "pg_restore"


def encontrar_backup_mas_reciente() -> Path:
    archivos = sorted(CARPETA_BACKUPS.glob("backup_*.dump"), key=lambda p: p.stat().st_mtime)
    if not archivos:
        print(f"ERROR: no hay ningún archivo de backup en {CARPETA_BACKUPS}.")
        print("Generá uno primero con: python backend/scripts/backup_db.py")
        sys.exit(1)
    return archivos[-1]


def main():
    if len(sys.argv) > 1:
        archivo_backup = Path(sys.argv[1])
        if not archivo_backup.exists():
            print(f"ERROR: no existe el archivo {archivo_backup}")
            sys.exit(1)
    else:
        archivo_backup = encontrar_backup_mas_reciente()
        print(f"No se especificó un archivo; usando el más reciente: {archivo_backup}")

    datos = obtener_datos_conexion()
    pg_restore = obtener_ruta_pg_restore()

    comando = [
        pg_restore,
        "-h", datos["host"],
        "-p", datos["puerto"],
        "-U", datos["usuario"],
        "-d", datos["nombre_db"],
        "-c",            # --clean: borra los objetos existentes antes de recrearlos
        "--if-exists",   # evita errores de "no existe" en la primera restauración
        "-v",
        str(archivo_backup),
    ]

    env = os.environ.copy()
    env["PGPASSWORD"] = datos["password"]

    print(f"Restaurando '{archivo_backup.name}' sobre la base '{datos['nombre_db']}'...")
    try:
        resultado = subprocess.run(comando, env=env, capture_output=True, text=True)
    except FileNotFoundError:
        print(
            "ERROR: no se encontró el comando 'pg_restore'.\n"
            "Verificá que PostgreSQL esté instalado y que pg_restore esté en el PATH,\n"
            "o agregá PG_BIN_DIR=<ruta a la carpeta bin de PostgreSQL> en tu .env."
        )
        sys.exit(1)

    # pg_restore con -c suele devolver avisos (ej. "no existe, omitiendo") que no son
    # errores reales en una restauración limpia; por eso solo fallamos si returncode
    # indica error grave (>1 según convención de pg_restore para warnings vs errores).
    if resultado.returncode > 1:
        print("ERROR al restaurar el backup:")
        print(resultado.stderr)
        sys.exit(1)

    if resultado.stderr:
        print("Avisos durante la restauración (normales en una restauración limpia):")
        print(resultado.stderr)

    print("Restauración completada exitosamente.")


if __name__ == "__main__":
    main()
