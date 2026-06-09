from fastapi import FastAPI
from pydantic import BaseModel
import psycopg2

app = FastAPI(title="API Control de Asistencia")

# 1. Configuración de Base de Datos
DB_CONFIG = {
    "dbname": "proyecto_asistencia",
    "user": "postgres", 
    "password": "fran123421", 
    "host": "localhost",
    "port": "5432"
}

# 2. Modelo de datos esperado
class Fichada(BaseModel):
    dni: str

# 3. La ruta (Endpoint) que va a recibir el DNI
@app.post("/fichar")
def procesar_fichada(fichada: Fichada):
    try:
        # Abrimos conexión a PostgreSQL
        conn = psycopg2.connect(**DB_CONFIG)
        cur = conn.cursor()

        # Llamamos a la función inteligente de la base de datos
        # (Esta es la que evaluará si es Entrada, Salida o Retiro Anticipado)
        cur.execute("SELECT registrar_fichada(%s);", (fichada.dni,))
        
        # Obtenemos la respuesta del motor
        resultado = cur.fetchone()[0] 
        
        # Guardamos los cambios y cerramos
        conn.commit()
        cur.close()
        conn.close()

        return {"status": "success", "mensaje": resultado, "dni": fichada.dni}

    except psycopg2.Error as e:
        return {"status": "error", "mensaje": f"Error de Base de Datos: {e.pgerror}"}
    except Exception as e:
        return {"status": "error", "mensaje": f"Error de servidor: {str(e)}"}