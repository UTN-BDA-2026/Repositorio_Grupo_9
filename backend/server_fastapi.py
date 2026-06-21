import os
from contextlib import asynccontextmanager

import asyncpg
from dotenv import load_dotenv
from fastapi import FastAPI, HTTPException
from pydantic import BaseModel, Field
from .models import FichadaRegistrada, CursoCreate, AlumnoCreate, AsistenciaUpdate, ExcepcionesCalendarioCreate, InscripcionCreate
from datetime import date,time

load_dotenv()

def _get_database_url() -> str | None:
	return os.getenv("DATABASE_URL")


@asynccontextmanager
async def lifespan(app: FastAPI):
	app.state.pool = None
	database_url = _get_database_url()

	if database_url:
		app.state.pool = await asyncpg.create_pool(
			dsn=database_url,
			min_size=int(os.getenv("DB_POOL_MIN_SIZE", "1")),
			max_size=int(os.getenv("DB_POOL_MAX_SIZE", "10")),
		)

	try:
		yield
	finally:
		if app.state.pool is not None:
			await app.state.pool.close()


app = FastAPI(title="Asistencia API", version="1.0.0", lifespan=lifespan)

# Para que los endpoints en tests no fallen si el lifespan no inicializa pool
@app.middleware("http")
async def ensure_pool_exists(request, call_next):
    if not hasattr(app.state, "pool"):
        app.state.pool = None
    return await call_next(request)



@app.get("/health")
async def health() -> dict[str, str]:
	if app.state.pool is None:
		return {"status": "degraded", "database": "not_configured"}
	return {"status": "ok", "database": "connected"}


@app.post("/fichada")
async def registrar_fichada(payload: FichadaRegistrada) -> dict[str, str]:
	if app.state.pool is None:
		raise HTTPException(
			status_code=503,
			detail="DATABASE_URL no configurada. Completa el archivo .env.",
		)

	try:
		async with app.state.pool.acquire() as conn:
			resultado = await conn.fetchval(
				"SELECT registrar_fichada($1);",
				payload.dni
			)
		return {"resultado": str(resultado)}
	except asyncpg.PostgresError as exc:
		raise HTTPException(status_code=500, detail=f"Error de base de datos: {exc}") from exc

@app.post("/alumnos")
async def crear_alumno(payload: AlumnoCreate) -> dict[str, str]:
	if app.state.pool is None:
		raise HTTPException(
			status_code=503,
			detail="DATABASE_URL no configurada. Completa el archivo .env.",
		)

	try:
		async with app.state.pool.acquire() as conn:
			await conn.execute(
				"""INSERT INTO Alumnos (dni, nombre, apellido, estado, fecha_nacimiento, sexo, nro_legajo, fecha_ingreso, curso_actual)
    				VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9);
    			""",
				payload.dni,
				payload.nombre,
				payload.apellido,
				payload.estado,
				payload.fecha_nacimiento,
				payload.sexo,
				payload.nro_legajo,
				payload.fecha_ingreso,
				payload.curso_id
			)
		return {"mensaje": f"El Alumno se acaba de añadir al sistema exitosamente.", "dni": payload.dni}
	except asyncpg.PostgresError as exc:
		raise HTTPException(status_code=500, detail=f"Error de base de datos: {exc}") from exc

@app.get("/alumnos/{dni}")
async def leer_alumno(dni: int) -> dict[str, str]:
	if app.state.pool is None:
		raise HTTPException(
			status_code=503,
			detail="DATABASE_URL no configurada. Completa el archivo .env.",
		)

	try:
		async with app.state.pool.acquire() as conn:
			alumno = await conn.fetchrow(
				"""SELECT * FROM Alumnos WHERE dni = $1;
				""",
				dni
			)
		if alumno is None:
			raise HTTPException(status_code=404, detail=f"Alumno con DNI {dni} no encontrado.")
		return dict(alumno)
	except asyncpg.PostgresError as exc:
		raise HTTPException(status_code=500, detail=f"Error de base de datos: {exc}") from exc

@app.get("/alumnos")
async def buscar_alumnos(nombre: str | None = None, apellido: str | None = None) -> list[dict[str, str]]:
	if app.state.pool is None:
		raise HTTPException(
			status_code=503,
			detail="DATABASE_URL no configurada. Completa el archivo .env.",
		)

	try:
		async with app.state.pool.acquire() as conn:
			alumnos = await conn.fetch(
				"""SELECT * FROM Alumnos
				WHERE ($1 IS NULL OR nombre ILIKE '%' || $1 || '%')
				AND ($2 IS NULL OR apellido ILIKE '%' || $2 || '%');
				""",
				nombre,
				apellido
			)
		return [dict(alumno) for alumno in alumnos]
	except asyncpg.PostgresError as exc:
		raise HTTPException(status_code=500, detail=f"Error de base de datos: {exc}") from exc

@app.delete("/alumnos/{dni}")
async def eliminar_alumno(dni: int) -> dict[str, str]:
	if app.state.pool is None:
		raise HTTPException(
			status_code=503,
			detail="DATABASE_URL no configurada. Completa el archivo .env.",
		)

	try:
		async with app.state.pool.acquire() as conn:
			result = await conn.execute(
				"""DELETE FROM Alumnos WHERE dni = $1;
				""",
				dni
			)
		if result == "DELETE 0":
			raise HTTPException(status_code=404, detail=f"Alumno con DNI {dni} no encontrado.")
		return {"mensaje": f"Alumno con DNI {dni} eliminado exitosamente."}
	except asyncpg.PostgresError as exc:
		raise HTTPException(status_code=500, detail=f"Error de base de datos: {exc}") from exc

@app.put("/alumnos/{dni}")
async def actualizar_alumno(dni: int, payload: AlumnoCreate) -> dict[str, str]:
	if app.state.pool is None:
		raise HTTPException(
			status_code=503,
			detail="DATABASE_URL no configurada. Completa el archivo .env.",
		)

	try:
		async with app.state.pool.acquire() as conn:
			result = await conn.execute(
				"""UPDATE Alumnos
				SET nombre = $1, apellido = $2, estado = $3, fecha_nacimiento = $4, sexo = $5, nro_legajo = $6, fecha_ingreso = $7, curso_actual = $8
				WHERE dni = $9;
				""",
				payload.nombre,
				payload.apellido,
				payload.estado,
				payload.fecha_nacimiento,
				payload.sexo,
				payload.nro_legajo,
				payload.fecha_ingreso,
				payload.id_curso,
				dni
			)
		if result == "UPDATE 0":
			raise HTTPException(status_code=404, detail=f"Alumno con DNI {dni} no encontrado.")
		return {"mensaje": f"Alumno con DNI {dni} actualizado exitosamente."}
	except asyncpg.PostgresError as exc:
		raise HTTPException(status_code=500, detail=f"Error de base de datos: {exc}") from exc

@app.post("/cursos")
async def crear_curso(payload: CursoCreate) -> dict[str, str]:
	if app.state.pool is None:
		raise HTTPException(
			status_code=503,
			detail="DATABASE_URL no configurada. Completa el archivo .env.",
		)

	try:
		async with app.state.pool.acquire() as conn:
			await conn.execute(
				"""INSERT INTO Cursos (id_curso, anio, division, hora_entrada_maniana_lunes, hora_salida_maniana_lunes,
    hora_entrada_maniana_martes, hora_salida_maniana_martes, hora_entrada_maniana_miercoles,
    hora_salida_maniana_miercoles, hora_entrada_maniana_jueves, hora_salida_maniana_jueves, hora_entrada_maniana_viernes,
    hora_salida_maniana_viernes, hora_entrada_tarde_lunes, hora_salida_tarde_lunes, hora_entrada_tarde_martes,
	hora_salida_tarde_martes, hora_entrada_tarde_miercoles, hora_salida_tarde_miercoles, hora_entrada_tarde_jueves, 
	hora_salida_tarde_jueves, hora_entrada_tarde_viernes, hora_salida_tarde_viernes)
					VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12, $13, $14, $15, $16, $17, $18, $19, $20, $21, $22, $23);
				""",
				payload.id_curso,
				payload.anio,
				payload.division,
				payload.hora_entrada_maniana_lunes,
				payload.hora_salida_maniana_lunes,
				payload.hora_entrada_maniana_martes,
				payload.hora_salida_maniana_martes,	
				payload.hora_entrada_maniana_miercoles,
				payload.hora_salida_maniana_miercoles,
				payload.hora_entrada_maniana_jueves,
				payload.hora_salida_maniana_jueves,
				payload.hora_entrada_maniana_viernes,
				payload.hora_salida_maniana_viernes,
				payload.hora_entrada_tarde_lunes,
				payload.hora_salida_tarde_lunes,
				payload.hora_entrada_tarde_martes,
				payload.hora_salida_tarde_martes,
				payload.hora_entrada_tarde_miercoles,
				payload.hora_salida_tarde_miercoles,
				payload.hora_entrada_tarde_jueves,	
				payload.hora_salida_tarde_jueves,
				payload.hora_entrada_tarde_viernes,	
				payload.hora_salida_tarde_viernes
			)
		return {"mensaje": f"El Curso se acaba de añadir al sistema exitosamente.", "id_curso": payload.id_curso}
	except asyncpg.PostgresError as exc:
		raise HTTPException(status_code=500, detail=f"Error de base de datos: {exc}") from exc

@app.get("/cursos")
async def listar_cursos() -> list[dict[str, str]]:
	if app.state.pool is None:
		raise HTTPException(
			status_code=503,
			detail="DATABASE_URL no configurada. Completa el archivo .env.",
		)
	try:
		async with app.state.pool.acquire() as conn:
			cursos = await conn.fetch(
				"""SELECT * FROM Cursos;
				"""
			)
		return [dict(curso) for curso in cursos]
	except asyncpg.PostgresError as exc:
		raise HTTPException(status_code=500, detail=f"Error de base de datos: {exc}") from exc

@app.get("/cursos/{id_curso}")
async def leer_curso(id_curso: int) -> dict[str, str]:
	if app.state.pool is None:
		raise HTTPException(
			status_code=503,
			detail="DATABASE_URL no configurada. Completa el archivo .env.",
		)

	try:
		async with app.state.pool.acquire() as conn:
			curso = await conn.fetchrow(
				"""SELECT * FROM Cursos WHERE id_curso = $1;
				""",
				id_curso
			)
		if curso is None:
			raise HTTPException(status_code=404, detail=f"Curso con ID {id_curso} no encontrado.")
		return dict(curso)
	except asyncpg.PostgresError as exc:
		raise HTTPException(status_code=500, detail=f"Error de base de datos: {exc}") from exc

@app.delete("/cursos/{id_curso}")
async def eliminar_curso(id_curso: int) -> dict[str, str]:
	if app.state.pool is None:
		raise HTTPException(
			status_code=503,
			detail="DATABASE_URL no configurada. Completa el archivo .env.",
		)

	try:
		async with app.state.pool.acquire() as conn:
			result = await conn.execute(
				"""DELETE FROM Cursos WHERE id_curso = $1;
				""",
				id_curso
			)
		if result == "DELETE 0":
			raise HTTPException(status_code=404, detail=f"Curso con ID {id_curso} no encontrado.")
		return {"mensaje": f"Curso con ID {id_curso} eliminado exitosamente."}
	except asyncpg.PostgresError as exc:
		raise HTTPException(status_code=500, detail=f"Error de base de datos: {exc}") from exc

@app.put("/cursos/{id_curso}")
async def actualizar_curso(id_curso: int, payload: CursoCreate) -> dict[str, str]:
	if app.state.pool is None:
		raise HTTPException(
			status_code=503,
			detail="DATABASE_URL no configurada. Completa el archivo .env.",
		)

	try:
		async with app.state.pool.acquire() as conn:
			result = await conn.execute(
				"""UPDATE Cursos
				SET id_curso = $1, anio = $2, division = $3, hora_entrada_maniana_lunes = $5, hora_salida_maniana_lunes = $6,
	hora_entrada_maniana_martes = $7, hora_salida_maniana_martes = $8, hora_entrada_maniana_miercoles = $9,
	hora_salida_maniana_miercoles = $10, hora_entrada_maniana_jueves = $11, hora_salida_maniana_jueves = $12, hora_entrada_maniana_viernes = $13,
	hora_salida_maniana_viernes = $14, hora_entrada_tarde_lunes = $15, hora_salida_tarde_lunes = $16, hora_entrada_tarde_martes = $17,
	hora_salida_tarde_martes = $18, hora_entrada_tarde_miercoles = $19, hora_salida_tarde_miercoles = $20, hora_entrada_tarde_jueves = $21, 
	hora_salida_tarde_jueves = $22, hora_entrada_tarde_viernes = $23, hora_salida_tarde_viernes = $24
				WHERE id_curso = $4;
				""",
				payload.id_curso,
				payload.anio,
				payload.division,
				id_curso,
				payload.hora_entrada_maniana_lunes,
				payload.hora_salida_maniana_lunes,
				payload.hora_entrada_maniana_martes,
				payload.hora_salida_maniana_martes,	
				payload.hora_entrada_maniana_miercoles,
				payload.hora_salida_maniana_miercoles,
				payload.hora_entrada_maniana_jueves,
				payload.hora_salida_maniana_jueves,
				payload.hora_entrada_maniana_viernes,
				payload.hora_salida_maniana_viernes,
				payload.hora_entrada_tarde_lunes,
				payload.hora_salida_tarde_lunes,
				payload.hora_entrada_tarde_martes,
				payload.hora_salida_tarde_martes,
				payload.hora_entrada_tarde_miercoles,
				payload.hora_salida_tarde_miercoles,
				payload.hora_entrada_tarde_jueves,	
				payload.hora_salida_tarde_jueves,
				payload.hora_entrada_tarde_viernes,	
				payload.hora_salida_tarde_viernes
			)
		if result == "UPDATE 0":
			raise HTTPException(status_code=404, detail=f"Curso con ID {id_curso} no encontrado.")
		return {"mensaje": f"Curso con ID {id_curso} actualizado exitosamente."}
	except asyncpg.PostgresError as exc:
		raise HTTPException(status_code=500, detail=f"Error de base de datos: {exc}") from exc

@app.put("/asistencias/{id_asistencia}")
async def actualizar_asistencia(id_asistencia: int, payload: AsistenciaUpdate) -> dict[str, str]:
	if app.state.pool is None:
		raise HTTPException(
			status_code=503,
			detail="DATABASE_URL no configurada. Completa el archivo .env.",
		)

	try:
		async with app.state.pool.acquire() as conn:
			result = await conn.execute(
				"""UPDATE Asistencias
				SET estado = $2, justificacion = $3, hora_entrada = $4
				WHERE id_asistencia = $1;
				""",
    			id_asistencia,
				payload.estado,
				payload.justificacion,
				payload.hora_entrada
			)
		if result == "UPDATE 0":
			raise HTTPException(status_code=404, detail=f"Asistencia con ID {id_asistencia} no encontrada.")
		return {"mensaje": f"Asistencia con ID {id_asistencia} actualizada exitosamente."}
	except asyncpg.PostgresError as exc:
		raise HTTPException(status_code=500, detail=f"Error de base de datos: {exc}") from exc

@app.get("/asistencias/{id_asistencia}")
async def leer_asistencia(id_asistencia: int) -> dict[str, str]:
	if app.state.pool is None:
		raise HTTPException(
			status_code=503,
			detail="DATABASE_URL no configurada. Completa el archivo .env.",
		)

	try:
		async with app.state.pool.acquire() as conn:
			asistencia = await conn.fetchrow(
				"""SELECT * FROM Asistencias WHERE id_asistencia = $1;
				""",
				id_asistencia
			)
		if asistencia is None:
			raise HTTPException(status_code=404, detail=f"Asistencia con ID {id_asistencia} no encontrada.")
		return dict(asistencia)
	except asyncpg.PostgresError as exc:
		raise HTTPException(status_code=500, detail=f"Error de base de datos: {exc}") from exc

@app.get("/asistencias")
async def listar_asistencias(
    alumno_dni: int | None = None, 
    fecha: date | None = None, 
    turno: str | None = None
) -> list[dict[str, str]]:
    if app.state.pool is None:
        raise HTTPException(
            status_code=503,
            detail="DATABASE_URL no configurada. Completa el archivo .env.",
        )
    try:
        async with app.state.pool.acquire() as conn:
            asistencias = await conn.fetch(
                """SELECT * FROM Asistencias
                WHERE ($1::int IS NULL OR alumno_dni = $1)
                AND ($2::date IS NULL OR fecha = $2)
                AND ($3::text IS NULL OR turno = $3);
                """,
                alumno_dni,
                fecha,
                turno
            )
        return [dict(asistencia) for asistencia in asistencias]
    except asyncpg.PostgresError as exc:
        raise HTTPException(status_code=500, detail=f"Error de base de datos: {exc}") from exc

@app.post("/excepciones")
async def crear_excepcion(payload: ExcepcionesCalendarioCreate) -> dict[str, str]:
    if app.state.pool is None:
        raise HTTPException(
            status_code=503,
            detail="DATABASE_URL no configurada. Completa el archivo .env.",
        )

    # Mini validación extra: Si es de tipo CURSO, el id_curso no puede ser nulo
    if payload.tipo_alcance == 'CURSO' and payload.id_curso is None:
        raise HTTPException(status_code=400, detail="Si el alcance es 'CURSO', debes especificar un id_curso.")

    try:
        async with app.state.pool.acquire() as conn:
            await conn.execute(
                """INSERT INTO Excepciones_Calendario (fecha, id_curso, motivo, tipo_alcance)
                VALUES ($1, $2, $3, $4);
                """,
                payload.fecha,
                payload.id_curso,
                payload.motivo,
                payload.tipo_alcance
            )
        return {"mensaje": f"Excepción '{payload.motivo}' para la fecha {payload.fecha} registrada exitosamente."}
    except asyncpg.PostgresError as exc:
        raise HTTPException(status_code=500, detail=f"Error de base de datos: {exc}") from exc


@app.get("/excepciones")
async def listar_excepciones() -> list[dict[str, str]]:
    if app.state.pool is None:
        raise HTTPException(
            status_code=503,
            detail="DATABASE_URL no configurada. Completa el archivo .env.",
        )
    try:
        async with app.state.pool.acquire() as conn:
            excepciones = await conn.fetch(
                """SELECT * FROM Excepciones_Calendario;
                """
            )
        return [dict(excepcion) for excepcion in excepciones]
    except asyncpg.PostgresError as exc:
        raise HTTPException(status_code=500, detail=f"Error de base de datos: {exc}") from exc

@app.delete("/excepciones/{id_excepcion}")
async def eliminar_excepcion(id_excepcion: int) -> dict[str, str]:
	if app.state.pool is None:
		raise HTTPException(
			status_code=503,
			detail="DATABASE_URL no configurada. Completa el archivo .env.",
		)

	try:
		async with app.state.pool.acquire() as conn:
			result = await conn.execute(
				"""DELETE FROM Excepciones_Calendario WHERE id_excepcion = $1;
				""",
				id_excepcion
			)
		if result == "DELETE 0":
			raise HTTPException(status_code=404, detail=f"Excepción con ID {id_excepcion} no encontrada.")
		return {"mensaje": f"Excepción con ID {id_excepcion} eliminada exitosamente."}
	except asyncpg.PostgresError as exc:
		raise HTTPException(status_code=500, detail=f"Error de base de datos: {exc}") from exc

@app.put("/excepciones/{id_excepcion}")
async def actualizar_excepcion(id_excepcion: int, payload: ExcepcionesCalendarioCreate) -> dict[str, str]:
    if app.state.pool is None:
        raise HTTPException(
            status_code=503,
            detail="DATABASE_URL no configurada. Completa el archivo .env.",
        )

    # Replicamos la validación del POST para evitar inconsistencias
    if payload.tipo_alcance == 'CURSO' and payload.id_curso is None:
        raise HTTPException(status_code=400, detail="Si el alcance es 'CURSO', debes especificar un id_curso.")

    try:
        async with app.state.pool.acquire() as conn:
            result = await conn.execute(
                """UPDATE Excepciones_Calendario
                SET fecha = $2, id_curso = $3, motivo = $4, tipo_alcance = $5
                WHERE id_excepcion = $1;
                """,
                id_excepcion,
                payload.fecha,
                payload.id_curso,
                payload.motivo,
                payload.tipo_alcance
            )
        if result == "UPDATE 0":
            raise HTTPException(status_code=404, detail=f"Excepción con ID {id_excepcion} no encontrada.")
        return {"mensaje": f"Excepción con ID {id_excepcion} actualizada exitosamente."}
    except asyncpg.PostgresError as exc:
        raise HTTPException(status_code=500, detail=f"Error de base de datos: {exc}") from exc

@app.post("/inscripciones")
async def inscribir_alumno(payload: InscripcionCreate) -> dict[str, str]:
	if app.state.pool is None:
		raise HTTPException(
			status_code=503,
			detail="DATABASE_URL no configurada. Completa el archivo .env.",
		)

	try:
		async with app.state.pool.acquire() as conn:
			await conn.execute(
				"""INSERT INTO Inscripciones (dni_alumno, id_curso, ciclo_lectivo, fecha_inscripcion)
				VALUES ($1, $2, $3, COALESCE($4, CURRENT_DATE));
				""",
				payload.dni_alumno,
				payload.id_curso,
				payload.ciclo_lectivo,
				payload.fecha_inscripcion
			)
		return {"mensaje": f"Alumno con DNI {payload.dni_alumno} inscrito en curso ID {payload.id_curso} exitosamente."}
	except asyncpg.PostgresError as exc:
		raise HTTPException(status_code=500, detail=f"Error de base de datos: {exc}") from exc

@app.get("/inscripciones")
async def listar_inscripciones() -> list[dict[str, str]]:
	if app.state.pool is None:
		raise HTTPException(
			status_code=503,
			detail="DATABASE_URL no configurada. Completa el archivo .env.",
		)
	try:
		async with app.state.pool.acquire() as conn:
			inscripciones = await conn.fetch(
				"""SELECT * FROM Inscripciones;
				"""
			)
		return [dict(inscripcion) for inscripcion in inscripciones]
	except asyncpg.PostgresError as exc:
		raise HTTPException(status_code=500, detail=f"Error de base de datos: {exc}") from exc

@app.get("/estadisticas/asistencias")
async def estadisticas_asistencias() -> dict[str, int]:
	# compatible con tests antiguos (si venían con querystring)
	# se ignoran parámetros no declarados
	
	if app.state.pool is None:
		raise HTTPException(
			status_code=503,
			detail="DATABASE_URL no configurada. Completa el archivo .env.",
		)
	try:
		async with app.state.pool.acquire() as conn:
			total_asistencias = await conn.fetchval("SELECT COUNT(*) FROM Asistencias;")
			asistencias_presentes = await conn.fetchval("SELECT COUNT(*) FROM Asistencias WHERE estado = 'PRESENTE';")
			asistencias_ausentes = await conn.fetchval("SELECT COUNT(*) FROM Asistencias WHERE estado = 'AUSENTE';")
			asistencias_tardanzas = await conn.fetchval("SELECT COUNT(*) FROM Asistencias WHERE estado = 'TARDANZA';")

		return {
			"total_asistencias": total_asistencias,
			"asistencias_presentes": asistencias_presentes,
			"asistencias_ausentes": asistencias_ausentes,
			"asistencias_tardanzas": asistencias_tardanzas
		}
	except asyncpg.PostgresError as exc:
		raise HTTPException(status_code=500, detail=f"Error de base de datos: {exc}") from exc