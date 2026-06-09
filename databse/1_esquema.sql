--1. Tabla PARAMÉTRICA: Horarios de Turno
CREATE TABLE IF NOT EXISTS Horario (
    id_horario SERIAL PRIMARY KEY,
    descripcion VARCHAR(50) NOT NULL,
    hora_inicio TIME NOT NULL,
    turno VARCHAR(20) NOT NULL --Ej: 'Mañana', 'Tarde', 'Noche'
    hora_fin TIME NOT NULL
);

--2. Tabla Paramétrica: Cursos
CREATE TABLE IF NOT EXISTS  Cursos (
    id_curso SERIAL PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL, --Ej: '3ro A'
    id_horario INT NOT NULL,
    FOREIGN KEY (id_horario) REFERENCES Turnos(id_horario)
);

-- Tabla intermedia para permitir que un mismo curso esté en varios turnos
CREATE TABLE IF NOT EXISTS Curso_Horarios (
    id_curso_horario SERIAL PRIMARY KEY,
    id_curso INT NOT NULL REFERENCES Cursos(id_curso),
    id_horario INT NOT NULL REFERENCES Turnos(id_horario),
    UNIQUE (id_curso, id_horario)
);

--3. Tabla Principal: Alumnos
CREATE TABLE IF NOT EXISTS  Alumnos (
    dni SERIAL PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    estado VARCHAR(20) DEFAULT 'ACTIVO', --Ej: 'ACTIVO', 'INACTIVO'
    tipo_documento VARCHAR(20) NOT NULL, --Ej: 'DNI', 'Pasaporte'
    fecha_nacimiento DATE NOT NULL,
    sexo VARCHAR(10) NOT NULL, --Ej: 'Masculino', 'Femenino', 'Otro'
    nro_legajo INT UNIQUE,
    fecha_ingreso DATE
);

--4. Tabla Principal: Inscripciones (HISTORIAL)
CREATE TABLE IF NOT EXISTS  Inscripciones (
    id_inscripcion SERIAL PRIMARY KEY,
    dni_alumno INT NOT NULL,
    id_curso INT NOT NULL,
    id_curso_horario INT,
    ciclo_lectivo INT NOT NULL, --Ej: 2024
    FOREIGN KEY (dni_alumno) REFERENCES Alumnos(dni),
    FOREIGN KEY (id_curso) REFERENCES Cursos(id_curso),
    FOREIGN KEY (id_curso_horario) REFERENCES Curso_Turnos(id_curso_horario),
    UNIQUE (dni_alumno, id_curso, ciclo_lectivo) -- Evita inscripciones duplicadas para el mismo alumno, curso y ciclo
);

--5. Tabla Principal: Asistencia
CREATE TABLE IF NOT EXISTS  Asistencias (
    id_asistencia BIGSERIAL,
    dni_alumno INT NOT NULL,
    id_horario INT NOT NULL,
    fecha DATE NOT NULL,
    hora_entrada TIME NOT NULL,
    hora_salida TIME,
    estado VARCHAR(50) DEFAULT 'PRESENTE',
    causa_retiro VARCHAR(255),
    PRIMARY KEY (id_asistencia, fecha), 
    FOREIGN KEY (id_horario) REFERENCES Turnos(id_horario),
    FOREIGN KEY (dni_alumno) REFERENCES Alumnos(dni) ON DELETE CASCADE
) PARTITION BY RANGE (fecha);

-- Particiones por año calendario de la fecha de asistencia
CREATE TABLE IF NOT EXISTS Asistencias_2022 PARTITION OF Asistencias
    FOR VALUES FROM ('2022-01-01') TO ('2023-01-01');

-- Año calendario 2023
CREATE TABLE IF NOT EXISTS Asistencias_2023 PARTITION OF Asistencias
    FOR VALUES FROM ('2023-01-01') TO ('2024-01-01');

-- Año calendario 2024
CREATE TABLE IF NOT EXISTS  Asistencias_2024 PARTITION OF Asistencias
    FOR VALUES FROM ('2024-01-01') TO ('2025-01-01');

-- Año calendario 2025
CREATE TABLE IF NOT EXISTS  Asistencias_2025 PARTITION OF Asistencias
    FOR VALUES FROM ('2025-01-01') TO ('2026-01-01');

-- Año calendario 2026
CREATE TABLE IF NOT EXISTS  Asistencias_2026 PARTITION OF Asistencias
    FOR VALUES FROM ('2026-01-01') TO ('2027-01-01');

-- Partición de respaldo para fechas fuera de los rangos anteriores
CREATE TABLE IF NOT EXISTS Asistencias_default PARTITION OF Asistencias DEFAULT;

-- Migración mínima: poblar Curso_Turnos desde el campo existente Cursos.id_turno
-- y mapear las inscripciones existentes a id_curso_turno.
-- Ejecutar en un entorno controlado (hacer backup antes).
INSERT INTO Curso_Turnos (id_curso, id_turno)
SELECT id_curso, id_turno FROM Cursos
ON CONFLICT (id_curso, id_turno) DO NOTHING;

-- Mapear inscripciones que aún no tengan id_curso_turno
UPDATE Inscripciones i
SET id_curso_turno = ct.id_curso_turno
FROM Curso_Turnos ct
WHERE i.id_curso = ct.id_curso
    AND i.id_curso_turno IS NULL;

-- Nota: si hay inscripciones que no pudieron mapearse o casos ambiguos,
-- revisarlos manualmente. Después de validar, se puede eliminar la columna
-- Inscripciones.id_curso (si se desea), pero hacerlo sólo tras pruebas.

-- Crear índice único para garantizar unicidad por curso_turno y ciclo
CREATE UNIQUE INDEX IF NOT EXISTS ux_inscripciones_dni_cursoturno_ciclo
ON Inscripciones (dni_alumno, id_curso_turno, ciclo_lectivo);

-- Verificar y, si es seguro, poner id_curso_turno NOT NULL y eliminar id_curso
DO $$
BEGIN
    IF EXISTS (SELECT 1 FROM Inscripciones WHERE id_curso_turno IS NULL) THEN
        RAISE NOTICE 'Hay inscripciones con id_curso_turno NULL. Revise antes de forzar NOT NULL y eliminar id_curso.';
    ELSE
        ALTER TABLE Inscripciones ALTER COLUMN id_curso_turno SET NOT NULL;
        -- Eliminar columna id_curso si ya no es necesaria (se usa CASCADE para limpiar constraints antiguas)
        ALTER TABLE Inscripciones DROP COLUMN IF EXISTS id_curso CASCADE;
    END IF;
END
$$;