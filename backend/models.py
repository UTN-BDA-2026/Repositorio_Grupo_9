import os
from contextlib import asynccontextmanager

import asyncpg
from dotenv import load_dotenv
from fastapi import FastAPI, HTTPException
from pydantic import BaseModel, Field, ConfigDict
from datetime import date,time

load_dotenv()

class StrictBaseModel(BaseModel):
    model_config = ConfigDict(extra="forbid")

class FichadaRegistrada(StrictBaseModel):
	dni: int = Field(..., ge=1)

class CursoCreate(StrictBaseModel):
    id_curso: int = Field(..., ge=1)
    anio: int = Field(..., ge=1)
    division: str
    hora_entrada_maniana_lunes :time | None = None
    hora_salida_maniana_lunes :time | None = None
    hora_entrada_maniana_martes :time | None = None
    hora_salida_maniana_martes :time | None = None
    hora_entrada_maniana_miercoles :time | None = None
    hora_salida_maniana_miercoles :time | None = None
    hora_entrada_maniana_jueves :time | None = None
    hora_salida_maniana_jueves :time | None = None
    hora_entrada_maniana_viernes :time | None = None
    hora_salida_maniana_viernes :time | None = None
    hora_entrada_tarde_lunes:time | None = None
    hora_salida_tarde_lunes :time | None = None
    hora_entrada_tarde_martes :time | None = None
    hora_salida_tarde_martes :time | None = None
    hora_entrada_tarde_miercoles :time | None = None
    hora_salida_tarde_miercoles :time | None = None
    hora_entrada_tarde_jueves :time | None = None
    hora_salida_tarde_jueves :time | None = None
    hora_entrada_tarde_viernes :time | None = None
    hora_salida_tarde_viernes :time | None = None

class AlumnoCreate(StrictBaseModel):
    dni: int = Field(..., ge=1)
    nombre: str
    apellido: str
    estado: str
    fecha_nacimiento: date
    sexo: str
    nro_legajo: int = Field(..., ge=1)
    fecha_ingreso: date | None = None
    id_curso: int = Field(..., ge=1)

# Modelo para actualizaciones PARCIALES (PUT /alumnos/{dni}).
# Todos los campos son opcionales: el cliente solo manda lo que quiere cambiar.
class AlumnoUpdate(StrictBaseModel):
    nombre: str | None = None
    apellido: str | None = None
    estado: str | None = None
    fecha_nacimiento: date | None = None
    sexo: str | None = None
    nro_legajo: int | None = Field(None, ge=1)
    fecha_ingreso: date | None = None
    id_curso: int | None = Field(None, ge=1)

class AsistenciaUpdate(StrictBaseModel):
    estado: str
    justificacion: str | None = None
    hora_entrada: time 

# Modelo para POST /asistencias: carga manual de un registro completo.
# A diferencia de /fichada (que solo recibe el DNI y deja que el procedimiento
# almacenado decida fecha/hora/estado/turno), este endpoint es para cuando el
# preceptor necesita cargar o corregir una asistencia a mano, indicando todos
# los datos explícitamente.
class AsistenciaCreate(StrictBaseModel):
    dni_alumno: int = Field(..., ge=1)
    fecha: date
    hora_entrada: time | None = None  # None solo es válido si estado == 'AUSENTE'
    estado: str  # 'PRESENTE' | 'TARDANZA' | 'AUSENTE'
    turno: str  # 'MAÑANA' | 'TARDE'
    justificacion: str | None = None

class ExcepcionesCalendarioCreate(StrictBaseModel):
    fecha: date
    motivo: str
    tipo_alcance: str  # Espera 'GLOBAL' o 'CURSO'
    id_curso: int | None = None  # Permite None para feriados globales

# Modelo para actualizaciones PARCIALES (PUT /excepciones/{id}).
class ExcepcionUpdate(StrictBaseModel):
    fecha: date | None = None
    motivo: str | None = None
    tipo_alcance: str | None = None
    id_curso: int | None = None

class InscripcionCreate(StrictBaseModel):
    dni_alumno: int = Field(..., ge=1)
    id_curso: int = Field(..., ge=1)
    ciclo_lectivo: int = Field(..., ge=1)
    fecha_inscripcion: date | None = None

class CerrarTurnoPayload(StrictBaseModel):
    turno: str # Debe ser "MAÑANA" o "TARDE"