--1. Tabla PARAMÉTRICA: Turnos
CREATE TABLE Turnos (
    id_turno SERIAL PRIMARY KEY,
    descripcion VARCHAR(50) NOT NULL,
    hora_inicio TIME NOT NULL,
    hora_fin TIME NOT NULL
);

--2. Tabla Paramétrica: Cursos
CREATE TABLE Cursos (
    id_curso SERIAL PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL, --Ej: '3ro A'
    id_turno INT NOT NULL,
    FOREIGN KEY (id_turno) REFERENCES Turnos(id_turno)
);

--3. Tabla Principal: Alumnos
CREATE TABLE Alumnos (
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
CREATE TABLE Inscripciones (
    id_inscripcion SERIAL PRIMARY KEY,
    dni_alumno INT NOT NULL,
    id_curso INT NOT NULL,
    ciclo_lectivo INT NOT NULL, --Ej: 2024
    FOREIGN KEY (dni_alumno) REFERENCES Alumnos(dni),
    FOREIGN KEY (id_curso) REFERENCES Cursos(id_curso),
    UNIQUE (dni_alumno, id_curso, ciclo_lectivo) -- Evita inscripciones duplicadas para el mismo alumno, curso y ciclo
);

--5. Tabla Principal: Asistencia
CREATE TABLE Asistencias (
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

-- 1er Año del alumno (Histórico)
CREATE TABLE Asistencias_2022 PARTITION OF Asistencias
    FOR VALUES FROM ('2022-01-01') TO ('2023-01-01');

-- 2do Año del alumno (Histórico)
CREATE TABLE Asistencias_2023 PARTITION OF Asistencias
    FOR VALUES FROM ('2023-01-01') TO ('2024-01-01');

-- 3er Año del alumno (Histórico)
CREATE TABLE Asistencias_2024 PARTITION OF Asistencias
    FOR VALUES FROM ('2024-01-01') TO ('2025-01-01');

-- 4to Año del alumno (Histórico)
CREATE TABLE Asistencias_2025 PARTITION OF Asistencias
    FOR VALUES FROM ('2025-01-01') TO ('2026-01-01');

-- 5to Año del alumno (Año actual cursando)
CREATE TABLE Asistencias_2026 PARTITION OF Asistencias
    FOR VALUES FROM ('2026-01-01') TO ('2027-01-01');