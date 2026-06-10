--1. Tabla Paramétrica: Cursos
CREATE TABLE IF NOT EXISTS  Cursos (
    id_curso SERIAL PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL, --Ej: '3ro A'
    hora_entrada_maniana_lunes TIME,
    hora_salida_maniana_lunes TIME,
    hora_entrada_maniana_martes TIME,
    hora_salida_maniana_martes TIME,
    hora_entrada_maniana_miercoles TIME,
    hora_salida_maniana_miercoles TIME,
    hora_entrada_maniana_jueves TIME,
    hora_salida_maniana_jueves TIME,
    hora_entrada_maniana_viernes TIME,
    hora_salida_maniana_viernes TIME,
    hora_entrada_tarde_lunes TIME,
    hora_salida_tarde_lunes TIME,
    hora_entrada_tarde_martes TIME,
    hora_salida_tarde_martes TIME,
    hora_entrada_tarde_miercoles TIME,
    hora_salida_tarde_miercoles TIME,
    hora_entrada_tarde_jueves TIME,
    hora_salida_tarde_jueves TIME,
    hora_entrada_tarde_viernes TIME,
    hora_salida_tarde_viernes TIME
);

--2. Tabla Principal: Alumnos
CREATE TABLE IF NOT EXISTS  Alumnos (
    dni INT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    estado VARCHAR(20) DEFAULT 'ACTIVO', --Ej: 'ACTIVO', 'INACTIVO'
    tipo_documento VARCHAR(20) NOT NULL, --Ej: 'DNI', 'Pasaporte'
    fecha_nacimiento DATE NOT NULL,
    sexo VARCHAR(10) NOT NULL, --Ej: 'Masculino', 'Femenino', 'Otro'
    nro_legajo INT UNIQUE,
    fecha_ingreso DATE,
    curso_actual INT NOT NULL,
    FOREIGN KEY (curso_actual) REFERENCES Cursos(id_curso)
);

--3. Tabla Principal: Inscripciones (HISTORIAL)
CREATE TABLE IF NOT EXISTS  Inscripciones (
    id_inscripcion SERIAL PRIMARY KEY,
    dni_alumno INT NOT NULL,
    id_curso INT NOT NULL,
    ciclo_lectivo INT NOT NULL, --Ej: 2024
    fecha_inscripcion DATE NOT NULL DEFAULT CURRENT_DATE,
    FOREIGN KEY (dni_alumno) REFERENCES Alumnos(dni) ON DELETE CASCADE,
    FOREIGN KEY (id_curso) REFERENCES Cursos(id_curso),
    UNIQUE (dni_alumno, id_curso, ciclo_lectivo) -- Evita inscripciones duplicadas para el mismo alumno, curso y ciclo
);

--4. Tabla Principal: Asistencia
CREATE TABLE IF NOT EXISTS  Asistencias (
    id_asistencia BIGSERIAL,
    dni_alumno INT NOT NULL,
    fecha DATE NOT NULL DEFAULT CURRENT_DATE,
    hora_entrada TIME NOT NULL DEFAULT CURRENT_TIME,
    estado VARCHAR(50) NOT NULL, --Ej: 'PRESENTE', 'AUSENTE', 'TARDANZA'
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