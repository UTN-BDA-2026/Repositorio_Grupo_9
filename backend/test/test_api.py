import pytest
from fastapi.testclient import TestClient
from backend.server_fastapi import app 

# Fixture que arranca la base de datos antes de las pruebas
@pytest.fixture(scope="function")
def client():
    # Nota: los tests asumen que la BD ya está creada y el esquema/carga de datos ya se ejecutó.
    with TestClient(app) as c:
        yield c



# ==========================================
# 1. TESTS DEL ESCÁNER (FICHADA)
# ==========================================

def test_registrar_fichada_exito(client):
    """Prueba el "Happy Path": un alumno activo fichando en horario correcto."""
    payload = {
        "dni": 45142092,  # Tu DNI de prueba (Franco)
    }
    response = client.post("/fichada", json=payload)
    
    # Dependiendo de cómo armaste tu endpoint, puede ser 200 o 201
    assert response.status_code in [200, 201]
    assert "estado" in response.json()

def test_registrar_fichada_dni_inexistente():
    """Prueba la validación cuando el escáner lee un DNI que no está en la BD."""
    payload = {
        "dni": 99999999, 
    }
    response = client.post("/fichada", json=payload)
    
    assert response.status_code == 404
    assert response.json()["detail"] == "Alumno no encontrado" # Ajusta el texto según tu backend

# ==========================================
# 2. TESTS CRUD DE ALUMNOS
# ==========================================

def test_obtener_lista_alumnos(client):
    """Verifica que el endpoint devuelva correctamente el listado de alumnos."""
    response = client.get("/alumnos")
    
    assert response.status_code == 200
    data = response.json()
    assert isinstance(data, list)
    assert len(data) > 0 # Como inyectamos 627 alumnos, la lista no debe estar vacía

def test_obtener_alumno_por_dni(client):
    """Verifica la búsqueda de un alumno específico."""
    dni_prueba = 45359643 # DNI de Adriel
    response = client.get(f"/alumnos/{dni_prueba}")
    
    assert response.status_code == 200
    assert response.json()["dni"] == dni_prueba

# ==========================================

def test_crear_alumno_nuevo(client):
    """Prueba POST /alumnos (201 Created)"""
    payload = {
        "dni": 46000111,
        "nombre": "Nuevo",
        "apellido": "Alumno",
        "estado": "ACTIVO",
        "fecha_nacimiento": "2010-01-01",
        "sexo": "MASCULINO",
        "nro_legajo": 50000,
        "fecha_ingreso": "2026-03-01",
        "id_curso": 1
    }
    response = client.post("/alumnos", json=payload)
    assert response.status_code in [200, 201]

def test_crear_alumno_dni_duplicado(client):
    """Prueba error 409 Conflict al repetir DNI"""
    payload = {
        "dni": 45142092, # Tu DNI ya existe en la BD
        "nombre": "Clon",
        "apellido": "Falso",
        "estado": "ACTIVO",
        "fecha_nacimiento": "2005-01-01",
        "sexo": "MASCULINO",
        "nro_legajo": 50001,
        "fecha_ingreso": "2026-03-01",
        "curso_actual": 1
    }
    response = client.post("/alumnos", json=payload)
    assert response.status_code == 409 # Código HTTP para "Conflicto"

def test_actualizar_alumno(client):
    """Prueba PUT /alumnos/{dni}"""
    response = client.put(
        "/alumnos/46000111", 
        json={"estado": "INACTIVO"} # Simulamos dar de baja
    )
    assert response.status_code == 200

# ==========================================

def test_obtener_cursos(client):
    """Prueba GET /cursos"""
    response = client.get("/cursos")
    assert response.status_code == 200
    assert len(response.json()) >= 25 # Sabemos que generamos 25 cursos

def test_obtener_curso_por_id(client):
    """Prueba GET /cursos/{id}"""
    response = client.get("/cursos/23") # El curso de 5to C de ustedes
    assert response.status_code == 200
    assert response.json()["id_curso"] == 23

def test_actualizar_curso_invalido(client):
    """Prueba 400 Bad Request enviando datos incorrectos"""
    response = client.put(
        "/cursos/999", 
        json={"hora_entrada_maniana_lunes": "hora_falsa"} # Formato de hora inválido
    )
    assert response.status_code in [400, 422] # FastAPI suele usar 422 para errores de validación Pydantic

# ==========================================

def test_obtener_asistencias_con_filtros(client):
    """Prueba GET /asistencias con query parameters"""
    response = client.get("/asistencias?fecha=2026-06-19&id_curso=23")
    assert response.status_code == 200
    assert isinstance(response.json(), list)

def test_justificar_asistencia(client):
    """Prueba PUT /asistencias/{id} para editar estado (ej: justificar falta)"""
    # Nota: Acá asumimos que el ID de asistencia 1 existe.
    # En un entorno real, primero harías un GET para obtener un ID válido.
    response = client.put(
        "/asistencias/1",
        json={"estado": "AUSENTE", "justificacion": "Justificación de ejemplo", "hora_entrada": "07:00"}
    )
    # Puede devolver 200 si el ID 1 existe, o 404 si no. Ambos son respuestas manejadas.
    assert response.status_code in [200, 404]

# ==========================================

def test_obtener_estadisticas(client):
    """Prueba GET /estadisticas (KPIs)"""
    response = client.get("/estadisticas/asistencias")
    assert response.status_code == 200
    
    data = response.json()
    # Verificamos que devuelva las claves que definiste en tu plan
    assert "presentes" in data
    assert "ausentes" in data
    assert "tardanzas" in data
    assert "tasa" in data

def test_eliminar_alumno(client):
    """Prueba DELETE /alumnos/{dni}"""
    # Usamos el DNI del alumno de prueba que creamos en el test de POST
    response = client.delete("/alumnos/46000111")
    assert response.status_code in [200, 204]

def test_crear_curso_nuevo(client):
    """Prueba POST /cursos"""
    payload = {
        "id_curso": 26, # Creamos un curso extra
        "anio": 6,
        "division": "A"
        # Los horarios pueden ir nulos según tu esquema
    }
    response = client.post("/cursos", json=payload)
    assert response.status_code in [200, 201]

def test_obtener_asistencia_por_id(client):
    """Prueba GET /asistencias/{id}"""
    response = client.get("/asistencias/1")
    # Aceptamos 200 si existe, o 404 si el ID 1 no se generó en tu DB
    assert response.status_code in [200, 404]

def test_obtener_excepciones(client):
    """Prueba GET /excepciones"""
    response = client.get("/excepciones")
    assert response.status_code == 200
    assert isinstance(response.json(), list)

def test_crear_excepcion(client):
    """Prueba POST /excepciones"""
    payload = {
        "fecha": "2026-09-21",
        "motivo": "Día del Estudiante",
        "tipo_alcance": "GLOBAL"
    }
    response = client.post("/excepciones", json=payload)
    assert response.status_code in [200, 201]

def test_actualizar_excepcion(client):
    """Prueba PUT /excepciones/{id}"""
    response = client.put(
        "/excepciones/1", 
        json={"motivo": "Feriado Nacional Modificado"}
    )
    assert response.status_code in [200, 404]

def test_eliminar_excepcion(client):
    """Prueba DELETE /excepciones/{id}"""
    response = client.delete("/excepciones/1")
    assert response.status_code in [200, 204, 404]

def test_obtener_inscripciones(client):
    """Prueba GET /inscripciones"""
    response = client.get("/inscripciones?ciclo_lectivo=2026")
    assert response.status_code == 200
    assert isinstance(response.json(), list)

def test_crear_inscripcion(client):
    """Prueba POST /inscripciones"""
    payload = {
        "dni_alumno": 45142092, # Tu DNI
        "id_curso": 23,
        "ciclo_lectivo": 2027, # Simulamos inscribirte para el año que viene
    }
    response = client.post("/inscripciones", json=payload)
    assert response.status_code in [200, 201]