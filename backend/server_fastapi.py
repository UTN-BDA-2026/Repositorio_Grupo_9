import os
from contextlib import asynccontextmanager

import asyncpg
from dotenv import load_dotenv
from fastapi import FastAPI, HTTPException
from pydantic import BaseModel, Field

load_dotenv()


class FichadaRequest(BaseModel):
	dni: int = Field(..., ge=1)
	id_horario: int | None = Field(default=None, ge=1)


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


@app.get("/health")
async def health() -> dict[str, str]:
	if app.state.pool is None:
		return {"status": "degraded", "database": "not_configured"}
	return {"status": "ok", "database": "connected"}


@app.post("/fichada")
async def registrar_fichada(payload: FichadaRequest) -> dict[str, str]:
	if app.state.pool is None:
		raise HTTPException(
			status_code=503,
			detail="DATABASE_URL no configurada. Completa el archivo .env.",
		)

	try:
		async with app.state.pool.acquire() as conn:
			resultado = await conn.fetchval(
				"SELECT registrar_asistencia($1, $2);",
				payload.dni,
				payload.id_horario,
			)
		return {"resultado": str(resultado)}
	except asyncpg.PostgresError as exc:
		raise HTTPException(status_code=500, detail=f"Error de base de datos: {exc}") from exc
