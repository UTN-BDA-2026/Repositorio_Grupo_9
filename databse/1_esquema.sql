--1. Tabla PARAMÉTRICA: Turnos
CREATE TABLE IF NOT EXISTS Turnos (
    id_turno SERIAL PRIMARY KEY,
    descripcion VARCHAR(50) NOT NULL,
    hora_inicio TIME NOT NULL,
    hora_fin TIME NOT NULL
);

--2. Tabla Paramétrica: Cursos
CREATE TABLE IF NOT EXISTS  Cursos (
    id_curso SERIAL PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL, --Ej: '3ro A'
    id_turno INT NOT NULL,
    FOREIGN KEY (id_turno) REFERENCES Turnos(id_turno)
);

--3. Tabla Principal: Alumnos
CREATE TABLE IF NOT EXISTS  Alumnos (
    dni SERIAL PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
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
    ciclo_lectivo INT NOT NULL, --Ej: 2024
    FOREIGN KEY (dni_alumno) REFERENCES Alumnos(dni),
    FOREIGN KEY (id_curso) REFERENCES Cursos(id_curso),
    UNIQUE (dni_alumno, id_curso, ciclo_lectivo) -- Evita inscripciones duplicadas para el mismo alumno, curso y ciclo
);

--5. Tabla Principal: Asistencia
CREATE TABLE IF NOT EXISTS  Asistencias (
    id_asistencia BIGSERIAL,
    dni_alumno INT NOT NULL,
    fecha DATE NOT NULL,
    hora_entrada TIME NOT NULL,
    hora_salida TIME,
    estado VARCHAR(50) DEFAULT 'PRESENTE',
    causa_retiro VARCHAR(255),
    PRIMARY KEY (id_asistencia, fecha), 
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