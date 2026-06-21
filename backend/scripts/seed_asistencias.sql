-- ==========================================
-- SCRIPT DE HISTORIAL DE ASISTENCIAS (5 AÑOS)
-- ==========================================


-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-03-02', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-03-02' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-03-02', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-03-02' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-03-03', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-03-03' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-03-03', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-03-03' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-03-04', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-03-04' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-03-04', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-03-04' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-03-07', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-03-07' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-03-07', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-03-07' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-03-08', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-03-08' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-03-08', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-03-08' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-03-09', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-03-09' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-03-09', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-03-09' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-03-10', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-03-10' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-03-10', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-03-10' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-03-11', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-03-11' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-03-11', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-03-11' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-03-14', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-03-14' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-03-14', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-03-14' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-03-15', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-03-15' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-03-15', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-03-15' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-03-16', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-03-16' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-03-16', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-03-16' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-03-17', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-03-17' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-03-17', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-03-17' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-03-18', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-03-18' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-03-18', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-03-18' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-03-21', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-03-21' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-03-21', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-03-21' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-03-22', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-03-22' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-03-22', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-03-22' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-03-23', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-03-23' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-03-23', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-03-23' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-03-25', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-03-25' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-03-25', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-03-25' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-03-28', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-03-28' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-03-28', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-03-28' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-03-29', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-03-29' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-03-29', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-03-29' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-03-30', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-03-30' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-03-30', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-03-30' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-03-31', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-03-31' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-03-31', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-03-31' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-04-01', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-04-01' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-04-01', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-04-01' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-04-04', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-04-04' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-04-04', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-04-04' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-04-05', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-04-05' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-04-05', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-04-05' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-04-06', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-04-06' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-04-06', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-04-06' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-04-07', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-04-07' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-04-07', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-04-07' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-04-08', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-04-08' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-04-08', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-04-08' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-04-11', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-04-11' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-04-11', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-04-11' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-04-12', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-04-12' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-04-12', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-04-12' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-04-13', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-04-13' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-04-13', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-04-13' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-04-14', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-04-14' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-04-14', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-04-14' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-04-15', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-04-15' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-04-15', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-04-15' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-04-18', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-04-18' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-04-18', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-04-18' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-04-19', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-04-19' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-04-19', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-04-19' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-04-20', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-04-20' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-04-20', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-04-20' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-04-21', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-04-21' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-04-21', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-04-21' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-04-22', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-04-22' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-04-22', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-04-22' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-04-25', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-04-25' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-04-25', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-04-25' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-04-26', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-04-26' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-04-26', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-04-26' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-04-27', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-04-27' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-04-27', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-04-27' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-04-28', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-04-28' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-04-28', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-04-28' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-04-29', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-04-29' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-04-29', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-04-29' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-05-02', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-05-02' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-05-02', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-05-02' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-05-03', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-05-03' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-05-03', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-05-03' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-05-04', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-05-04' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-05-04', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-05-04' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-05-05', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-05-05' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-05-05', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-05-05' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-05-06', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-05-06' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-05-06', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-05-06' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-05-09', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-05-09' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-05-09', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-05-09' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-05-10', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-05-10' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-05-10', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-05-10' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-05-11', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-05-11' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-05-11', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-05-11' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-05-12', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-05-12' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-05-12', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-05-12' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-05-13', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-05-13' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-05-13', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-05-13' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-05-16', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-05-16' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-05-16', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-05-16' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-05-17', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-05-17' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-05-17', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-05-17' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-05-18', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-05-18' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-05-18', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-05-18' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-05-19', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-05-19' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-05-19', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-05-19' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-05-20', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-05-20' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-05-20', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-05-20' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-05-23', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-05-23' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-05-23', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-05-23' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-05-24', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-05-24' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-05-24', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-05-24' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-05-26', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-05-26' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-05-26', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-05-26' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-05-27', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-05-27' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-05-27', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-05-27' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-05-30', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-05-30' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-05-30', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-05-30' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-05-31', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-05-31' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-05-31', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-05-31' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-06-01', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-06-01' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-06-01', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-06-01' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-06-02', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-06-02' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-06-02', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-06-02' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-06-03', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-06-03' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-06-03', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-06-03' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-06-06', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-06-06' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-06-06', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-06-06' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-06-07', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-06-07' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-06-07', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-06-07' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-06-08', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-06-08' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-06-08', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-06-08' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-06-09', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-06-09' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-06-09', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-06-09' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-06-10', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-06-10' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-06-10', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-06-10' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-06-13', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-06-13' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-06-13', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-06-13' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-06-14', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-06-14' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-06-14', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-06-14' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-06-15', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-06-15' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-06-15', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-06-15' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-06-16', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-06-16' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-06-16', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-06-16' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-06-21', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-06-21' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-06-21', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-06-21' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-06-22', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-06-22' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-06-22', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-06-22' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-06-23', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-06-23' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-06-23', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-06-23' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-06-24', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-06-24' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-06-24', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-06-24' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-06-27', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-06-27' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-06-27', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-06-27' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-06-28', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-06-28' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-06-28', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-06-28' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-06-29', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-06-29' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-06-29', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-06-29' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-06-30', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-06-30' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-06-30', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-06-30' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-08-01', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-08-01' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-08-01', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-08-01' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-08-02', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-08-02' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-08-02', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-08-02' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-08-03', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-08-03' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-08-03', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-08-03' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-08-04', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-08-04' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-08-04', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-08-04' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-08-05', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-08-05' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-08-05', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-08-05' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-08-08', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-08-08' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-08-08', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-08-08' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-08-09', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-08-09' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-08-09', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-08-09' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-08-10', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-08-10' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-08-10', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-08-10' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-08-11', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-08-11' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-08-11', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-08-11' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-08-12', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-08-12' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-08-12', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-08-12' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-08-15', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-08-15' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-08-15', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-08-15' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-08-16', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-08-16' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-08-16', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-08-16' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-08-18', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-08-18' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-08-18', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-08-18' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-08-19', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-08-19' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-08-19', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-08-19' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-08-22', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-08-22' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-08-22', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-08-22' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-08-23', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-08-23' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-08-23', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-08-23' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-08-24', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-08-24' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-08-24', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-08-24' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-08-25', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-08-25' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-08-25', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-08-25' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-08-26', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-08-26' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-08-26', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-08-26' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-08-29', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-08-29' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-08-29', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-08-29' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-08-30', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-08-30' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-08-30', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-08-30' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-08-31', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-08-31' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-08-31', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-08-31' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-09-01', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-09-01' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-09-01', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-09-01' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-09-02', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-09-02' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-09-02', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-09-02' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-09-05', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-09-05' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-09-05', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-09-05' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-09-06', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-09-06' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-09-06', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-09-06' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-09-07', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-09-07' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-09-07', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-09-07' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-09-08', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-09-08' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-09-08', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-09-08' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-09-09', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-09-09' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-09-09', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-09-09' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-09-12', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-09-12' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-09-12', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-09-12' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-09-13', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-09-13' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-09-13', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-09-13' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-09-14', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-09-14' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-09-14', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-09-14' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-09-15', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-09-15' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-09-15', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-09-15' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-09-16', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-09-16' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-09-16', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-09-16' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-09-19', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-09-19' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-09-19', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-09-19' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-09-20', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-09-20' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-09-20', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-09-20' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-09-21', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-09-21' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-09-21', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-09-21' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-09-22', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-09-22' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-09-22', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-09-22' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-09-23', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-09-23' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-09-23', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-09-23' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-09-26', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-09-26' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-09-26', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-09-26' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-09-27', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-09-27' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-09-27', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-09-27' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-09-28', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-09-28' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-09-28', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-09-28' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-09-29', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-09-29' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-09-29', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-09-29' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-09-30', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-09-30' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-09-30', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-09-30' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-10-03', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-10-03' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-10-03', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-10-03' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-10-04', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-10-04' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-10-04', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-10-04' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-10-05', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-10-05' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-10-05', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-10-05' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-10-06', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-10-06' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-10-06', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-10-06' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-10-07', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-10-07' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-10-07', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-10-07' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-10-10', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-10-10' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-10-10', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-10-10' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-10-11', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-10-11' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-10-11', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-10-11' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-10-13', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-10-13' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-10-13', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-10-13' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-10-14', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-10-14' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-10-14', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-10-14' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-10-17', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-10-17' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-10-17', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-10-17' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-10-18', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-10-18' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-10-18', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-10-18' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-10-19', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-10-19' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-10-19', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-10-19' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-10-20', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-10-20' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-10-20', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-10-20' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-10-21', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-10-21' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-10-21', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-10-21' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-10-24', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-10-24' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-10-24', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-10-24' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-10-25', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-10-25' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-10-25', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-10-25' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-10-26', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-10-26' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-10-26', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-10-26' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-10-27', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-10-27' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-10-27', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-10-27' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-10-28', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-10-28' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-10-28', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-10-28' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-10-31', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-10-31' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-10-31', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-10-31' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-11-01', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-11-01' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-11-01', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-11-01' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-11-02', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-11-02' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-11-02', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-11-02' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-11-03', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-11-03' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-11-03', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-11-03' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-11-04', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-11-04' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-11-04', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-11-04' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-11-07', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-11-07' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-11-07', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-11-07' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-11-08', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-11-08' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-11-08', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-11-08' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-11-09', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-11-09' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-11-09', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-11-09' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-11-10', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-11-10' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-11-10', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-11-10' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-11-11', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-11-11' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-11-11', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-11-11' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-11-14', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-11-14' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-11-14', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-11-14' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-11-15', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-11-15' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-11-15', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-11-15' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-11-16', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-11-16' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-11-16', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-11-16' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-11-17', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-11-17' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-11-17', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-11-17' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-11-18', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-11-18' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-11-18', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-11-18' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-11-21', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-11-21' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-11-21', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-11-21' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-11-22', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-11-22' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-11-22', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-11-22' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-11-23', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-11-23' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-11-23', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-11-23' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-11-24', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-11-24' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-11-24', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-11-24' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-11-25', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-11-25' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-11-25', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-11-25' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-11-28', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-11-28' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-11-28', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-11-28' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-11-29', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-11-29' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-11-29', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-11-29' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-11-30', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-11-30' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-11-30', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-11-30' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-12-01', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-12-01' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-12-01', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-12-01' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-12-02', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-12-02' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-12-02', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-12-02' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-12-05', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-12-05' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-12-05', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-12-05' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-12-06', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-12-06' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-12-06', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-12-06' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-12-07', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-12-07' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-12-07', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-12-07' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-12-08', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-12-08' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-12-08', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-12-08' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-12-09', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-12-09' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-12-09', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-12-09' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-12-12', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-12-12' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-12-12', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-12-12' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-12-13', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-12-13' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-12-13', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-12-13' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-12-14', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-12-14' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-12-14', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-12-14' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-12-15', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-12-15' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2022-12-15', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2022-12-15' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-03-01', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-03-01' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-03-01', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-03-01' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-03-02', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-03-02' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-03-02', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-03-02' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-03-03', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-03-03' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-03-03', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-03-03' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-03-06', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-03-06' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-03-06', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-03-06' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-03-07', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-03-07' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-03-07', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-03-07' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-03-08', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-03-08' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-03-08', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-03-08' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-03-09', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-03-09' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-03-09', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-03-09' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-03-10', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-03-10' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-03-10', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-03-10' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-03-13', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-03-13' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-03-13', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-03-13' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-03-14', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-03-14' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-03-14', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-03-14' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-03-15', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-03-15' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-03-15', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-03-15' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-03-16', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-03-16' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-03-16', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-03-16' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-03-17', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-03-17' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-03-17', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-03-17' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-03-20', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-03-20' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-03-20', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-03-20' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-03-21', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-03-21' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-03-21', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-03-21' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-03-22', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-03-22' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-03-22', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-03-22' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-03-23', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-03-23' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-03-23', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-03-23' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-03-27', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-03-27' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-03-27', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-03-27' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-03-28', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-03-28' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-03-28', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-03-28' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-03-29', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-03-29' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-03-29', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-03-29' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-03-30', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-03-30' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-03-30', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-03-30' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-03-31', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-03-31' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-03-31', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-03-31' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-04-03', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-04-03' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-04-03', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-04-03' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-04-04', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-04-04' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-04-04', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-04-04' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-04-05', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-04-05' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-04-05', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-04-05' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-04-06', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-04-06' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-04-06', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-04-06' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-04-07', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-04-07' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-04-07', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-04-07' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-04-10', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-04-10' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-04-10', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-04-10' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-04-11', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-04-11' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-04-11', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-04-11' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-04-12', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-04-12' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-04-12', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-04-12' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-04-13', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-04-13' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-04-13', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-04-13' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-04-14', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-04-14' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-04-14', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-04-14' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-04-17', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-04-17' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-04-17', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-04-17' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-04-18', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-04-18' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-04-18', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-04-18' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-04-19', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-04-19' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-04-19', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-04-19' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-04-20', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-04-20' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-04-20', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-04-20' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-04-21', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-04-21' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-04-21', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-04-21' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-04-24', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-04-24' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-04-24', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-04-24' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-04-25', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-04-25' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-04-25', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-04-25' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-04-26', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-04-26' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-04-26', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-04-26' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-04-27', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-04-27' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-04-27', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-04-27' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-04-28', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-04-28' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-04-28', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-04-28' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-05-02', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-05-02' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-05-02', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-05-02' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-05-03', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-05-03' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-05-03', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-05-03' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-05-04', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-05-04' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-05-04', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-05-04' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-05-05', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-05-05' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-05-05', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-05-05' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-05-08', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-05-08' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-05-08', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-05-08' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-05-09', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-05-09' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-05-09', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-05-09' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-05-10', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-05-10' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-05-10', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-05-10' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-05-11', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-05-11' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-05-11', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-05-11' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-05-12', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-05-12' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-05-12', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-05-12' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-05-15', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-05-15' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-05-15', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-05-15' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-05-16', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-05-16' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-05-16', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-05-16' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-05-17', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-05-17' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-05-17', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-05-17' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-05-18', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-05-18' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-05-18', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-05-18' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-05-19', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-05-19' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-05-19', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-05-19' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-05-22', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-05-22' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-05-22', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-05-22' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-05-23', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-05-23' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-05-23', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-05-23' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-05-24', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-05-24' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-05-24', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-05-24' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-05-26', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-05-26' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-05-26', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-05-26' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-05-29', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-05-29' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-05-29', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-05-29' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-05-30', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-05-30' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-05-30', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-05-30' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-05-31', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-05-31' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-05-31', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-05-31' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-06-01', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-06-01' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-06-01', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-06-01' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-06-02', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-06-02' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-06-02', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-06-02' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-06-05', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-06-05' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-06-05', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-06-05' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-06-06', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-06-06' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-06-06', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-06-06' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-06-07', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-06-07' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-06-07', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-06-07' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-06-08', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-06-08' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-06-08', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-06-08' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-06-09', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-06-09' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-06-09', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-06-09' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-06-12', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-06-12' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-06-12', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-06-12' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-06-13', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-06-13' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-06-13', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-06-13' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-06-14', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-06-14' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-06-14', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-06-14' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-06-15', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-06-15' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-06-15', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-06-15' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-06-16', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-06-16' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-06-16', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-06-16' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-06-19', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-06-19' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-06-19', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-06-19' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-06-21', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-06-21' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-06-21', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-06-21' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-06-22', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-06-22' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-06-22', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-06-22' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-06-23', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-06-23' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-06-23', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-06-23' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-06-26', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-06-26' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-06-26', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-06-26' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-06-27', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-06-27' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-06-27', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-06-27' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-06-28', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-06-28' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-06-28', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-06-28' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-06-29', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-06-29' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-06-29', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-06-29' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-06-30', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-06-30' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-06-30', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-06-30' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-08-01', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-08-01' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-08-01', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-08-01' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-08-02', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-08-02' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-08-02', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-08-02' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-08-03', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-08-03' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-08-03', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-08-03' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-08-04', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-08-04' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-08-04', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-08-04' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-08-07', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-08-07' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-08-07', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-08-07' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-08-08', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-08-08' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-08-08', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-08-08' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-08-09', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-08-09' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-08-09', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-08-09' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-08-10', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-08-10' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-08-10', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-08-10' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-08-11', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-08-11' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-08-11', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-08-11' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-08-14', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-08-14' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-08-14', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-08-14' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-08-15', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-08-15' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-08-15', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-08-15' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-08-16', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-08-16' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-08-16', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-08-16' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-08-18', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-08-18' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-08-18', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-08-18' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-08-21', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-08-21' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-08-21', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-08-21' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-08-22', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-08-22' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-08-22', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-08-22' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-08-23', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-08-23' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-08-23', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-08-23' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-08-24', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-08-24' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-08-24', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-08-24' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-08-25', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-08-25' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-08-25', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-08-25' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-08-28', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-08-28' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-08-28', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-08-28' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-08-29', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-08-29' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-08-29', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-08-29' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-08-30', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-08-30' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-08-30', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-08-30' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-08-31', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-08-31' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-08-31', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-08-31' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-09-01', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-09-01' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-09-01', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-09-01' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-09-04', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-09-04' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-09-04', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-09-04' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-09-05', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-09-05' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-09-05', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-09-05' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-09-06', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-09-06' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-09-06', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-09-06' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-09-07', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-09-07' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-09-07', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-09-07' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-09-08', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-09-08' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-09-08', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-09-08' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-09-11', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-09-11' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-09-11', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-09-11' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-09-12', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-09-12' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-09-12', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-09-12' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-09-13', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-09-13' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-09-13', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-09-13' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-09-14', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-09-14' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-09-14', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-09-14' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-09-15', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-09-15' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-09-15', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-09-15' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-09-18', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-09-18' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-09-18', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-09-18' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-09-19', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-09-19' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-09-19', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-09-19' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-09-20', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-09-20' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-09-20', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-09-20' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-09-21', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-09-21' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-09-21', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-09-21' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-09-22', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-09-22' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-09-22', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-09-22' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-09-25', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-09-25' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-09-25', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-09-25' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-09-26', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-09-26' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-09-26', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-09-26' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-09-27', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-09-27' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-09-27', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-09-27' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-09-28', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-09-28' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-09-28', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-09-28' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-09-29', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-09-29' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-09-29', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-09-29' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-10-02', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-10-02' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-10-02', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-10-02' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-10-03', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-10-03' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-10-03', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-10-03' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-10-04', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-10-04' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-10-04', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-10-04' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-10-05', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-10-05' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-10-05', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-10-05' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-10-06', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-10-06' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-10-06', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-10-06' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-10-09', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-10-09' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-10-09', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-10-09' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-10-10', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-10-10' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-10-10', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-10-10' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-10-11', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-10-11' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-10-11', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-10-11' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-10-13', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-10-13' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-10-13', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-10-13' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-10-16', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-10-16' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-10-16', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-10-16' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-10-17', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-10-17' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-10-17', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-10-17' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-10-18', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-10-18' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-10-18', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-10-18' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-10-19', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-10-19' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-10-19', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-10-19' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-10-20', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-10-20' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-10-20', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-10-20' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-10-23', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-10-23' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-10-23', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-10-23' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-10-24', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-10-24' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-10-24', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-10-24' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-10-25', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-10-25' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-10-25', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-10-25' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-10-26', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-10-26' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-10-26', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-10-26' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-10-27', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-10-27' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-10-27', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-10-27' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-10-30', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-10-30' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-10-30', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-10-30' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-10-31', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-10-31' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-10-31', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-10-31' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-11-01', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-11-01' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-11-01', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-11-01' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-11-02', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-11-02' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-11-02', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-11-02' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-11-03', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-11-03' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-11-03', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-11-03' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-11-06', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-11-06' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-11-06', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-11-06' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-11-07', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-11-07' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-11-07', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-11-07' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-11-08', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-11-08' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-11-08', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-11-08' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-11-09', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-11-09' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-11-09', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-11-09' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-11-10', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-11-10' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-11-10', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-11-10' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-11-13', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-11-13' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-11-13', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-11-13' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-11-14', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-11-14' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-11-14', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-11-14' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-11-15', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-11-15' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-11-15', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-11-15' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-11-16', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-11-16' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-11-16', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-11-16' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-11-17', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-11-17' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-11-17', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-11-17' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-11-21', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-11-21' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-11-21', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-11-21' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-11-22', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-11-22' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-11-22', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-11-22' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-11-23', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-11-23' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-11-23', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-11-23' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-11-24', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-11-24' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-11-24', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-11-24' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-11-27', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-11-27' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-11-27', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-11-27' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-11-28', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-11-28' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-11-28', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-11-28' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-11-29', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-11-29' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-11-29', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-11-29' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-11-30', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-11-30' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-11-30', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-11-30' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-12-01', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-12-01' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-12-01', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-12-01' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-12-04', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-12-04' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-12-04', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-12-04' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-12-05', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-12-05' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-12-05', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-12-05' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-12-06', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-12-06' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-12-06', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-12-06' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-12-07', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-12-07' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-12-07', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-12-07' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-12-08', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-12-08' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-12-08', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-12-08' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-12-11', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-12-11' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-12-11', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-12-11' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-12-12', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-12-12' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-12-12', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-12-12' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-12-13', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-12-13' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-12-13', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-12-13' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-12-14', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-12-14' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-12-14', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-12-14' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-12-15', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-12-15' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2023-12-15', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2023-12-15' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-03-01', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-03-01' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-03-01', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-03-01' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-03-04', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-03-04' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-03-04', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-03-04' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-03-05', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-03-05' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-03-05', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-03-05' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-03-06', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-03-06' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-03-06', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-03-06' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-03-07', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-03-07' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-03-07', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-03-07' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-03-08', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-03-08' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-03-08', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-03-08' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-03-11', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-03-11' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-03-11', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-03-11' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-03-12', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-03-12' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-03-12', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-03-12' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-03-13', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-03-13' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-03-13', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-03-13' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-03-14', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-03-14' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-03-14', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-03-14' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-03-15', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-03-15' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-03-15', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-03-15' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-03-18', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-03-18' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-03-18', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-03-18' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-03-19', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-03-19' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-03-19', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-03-19' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-03-20', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-03-20' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-03-20', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-03-20' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-03-21', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-03-21' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-03-21', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-03-21' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-03-22', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-03-22' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-03-22', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-03-22' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-03-25', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-03-25' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-03-25', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-03-25' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-03-26', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-03-26' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-03-26', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-03-26' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-03-27', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-03-27' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-03-27', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-03-27' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-03-28', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-03-28' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-03-28', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-03-28' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-03-29', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-03-29' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-03-29', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-03-29' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-04-01', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-04-01' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-04-01', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-04-01' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-04-03', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-04-03' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-04-03', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-04-03' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-04-04', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-04-04' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-04-04', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-04-04' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-04-05', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-04-05' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-04-05', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-04-05' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-04-08', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-04-08' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-04-08', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-04-08' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-04-09', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-04-09' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-04-09', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-04-09' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-04-10', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-04-10' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-04-10', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-04-10' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-04-11', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-04-11' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-04-11', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-04-11' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-04-12', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-04-12' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-04-12', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-04-12' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-04-15', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-04-15' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-04-15', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-04-15' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-04-16', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-04-16' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-04-16', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-04-16' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-04-17', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-04-17' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-04-17', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-04-17' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-04-18', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-04-18' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-04-18', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-04-18' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-04-19', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-04-19' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-04-19', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-04-19' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-04-22', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-04-22' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-04-22', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-04-22' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-04-23', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-04-23' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-04-23', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-04-23' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-04-24', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-04-24' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-04-24', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-04-24' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-04-25', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-04-25' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-04-25', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-04-25' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-04-26', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-04-26' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-04-26', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-04-26' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-04-29', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-04-29' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-04-29', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-04-29' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-04-30', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-04-30' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-04-30', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-04-30' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-05-02', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-05-02' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-05-02', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-05-02' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-05-03', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-05-03' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-05-03', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-05-03' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-05-06', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-05-06' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-05-06', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-05-06' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-05-07', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-05-07' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-05-07', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-05-07' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-05-08', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-05-08' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-05-08', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-05-08' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-05-09', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-05-09' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-05-09', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-05-09' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-05-10', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-05-10' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-05-10', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-05-10' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-05-13', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-05-13' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-05-13', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-05-13' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-05-14', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-05-14' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-05-14', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-05-14' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-05-15', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-05-15' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-05-15', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-05-15' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-05-16', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-05-16' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-05-16', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-05-16' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-05-17', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-05-17' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-05-17', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-05-17' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-05-20', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-05-20' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-05-20', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-05-20' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-05-21', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-05-21' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-05-21', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-05-21' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-05-22', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-05-22' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-05-22', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-05-22' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-05-23', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-05-23' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-05-23', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-05-23' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-05-24', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-05-24' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-05-24', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-05-24' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-05-27', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-05-27' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-05-27', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-05-27' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-05-28', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-05-28' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-05-28', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-05-28' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-05-29', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-05-29' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-05-29', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-05-29' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-05-30', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-05-30' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-05-30', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-05-30' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-05-31', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-05-31' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-05-31', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-05-31' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-06-03', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-06-03' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-06-03', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-06-03' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-06-04', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-06-04' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-06-04', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-06-04' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-06-05', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-06-05' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-06-05', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-06-05' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-06-06', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-06-06' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-06-06', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-06-06' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-06-07', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-06-07' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-06-07', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-06-07' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-06-10', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-06-10' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-06-10', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-06-10' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-06-11', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-06-11' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-06-11', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-06-11' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-06-12', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-06-12' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-06-12', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-06-12' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-06-13', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-06-13' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-06-13', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-06-13' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-06-14', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-06-14' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-06-14', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-06-14' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-06-18', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-06-18' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-06-18', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-06-18' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-06-19', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-06-19' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-06-19', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-06-19' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-06-21', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-06-21' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-06-21', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-06-21' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-06-24', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-06-24' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-06-24', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-06-24' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-06-25', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-06-25' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-06-25', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-06-25' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-06-26', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-06-26' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-06-26', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-06-26' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-06-27', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-06-27' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-06-27', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-06-27' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-06-28', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-06-28' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-06-28', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-06-28' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-08-01', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-08-01' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-08-01', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-08-01' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-08-02', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-08-02' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-08-02', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-08-02' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-08-05', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-08-05' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-08-05', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-08-05' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-08-06', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-08-06' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-08-06', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-08-06' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-08-07', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-08-07' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-08-07', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-08-07' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-08-08', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-08-08' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-08-08', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-08-08' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-08-09', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-08-09' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-08-09', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-08-09' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-08-12', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-08-12' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-08-12', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-08-12' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-08-13', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-08-13' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-08-13', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-08-13' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-08-14', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-08-14' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-08-14', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-08-14' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-08-15', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-08-15' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-08-15', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-08-15' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-08-16', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-08-16' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-08-16', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-08-16' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-08-19', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-08-19' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-08-19', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-08-19' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-08-20', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-08-20' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-08-20', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-08-20' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-08-21', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-08-21' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-08-21', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-08-21' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-08-22', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-08-22' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-08-22', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-08-22' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-08-23', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-08-23' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-08-23', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-08-23' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-08-26', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-08-26' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-08-26', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-08-26' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-08-27', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-08-27' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-08-27', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-08-27' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-08-28', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-08-28' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-08-28', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-08-28' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-08-29', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-08-29' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-08-29', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-08-29' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-08-30', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-08-30' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-08-30', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-08-30' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-09-02', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-09-02' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-09-02', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-09-02' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-09-03', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-09-03' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-09-03', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-09-03' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-09-04', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-09-04' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-09-04', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-09-04' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-09-05', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-09-05' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-09-05', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-09-05' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-09-06', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-09-06' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-09-06', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-09-06' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-09-09', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-09-09' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-09-09', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-09-09' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-09-10', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-09-10' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-09-10', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-09-10' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-09-11', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-09-11' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-09-11', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-09-11' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-09-12', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-09-12' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-09-12', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-09-12' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-09-13', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-09-13' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-09-13', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-09-13' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-09-16', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-09-16' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-09-16', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-09-16' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-09-17', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-09-17' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-09-17', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-09-17' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-09-18', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-09-18' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-09-18', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-09-18' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-09-19', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-09-19' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-09-19', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-09-19' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-09-20', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-09-20' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-09-20', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-09-20' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-09-23', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-09-23' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-09-23', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-09-23' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-09-24', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-09-24' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-09-24', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-09-24' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-09-25', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-09-25' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-09-25', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-09-25' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-09-26', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-09-26' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-09-26', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-09-26' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-09-27', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-09-27' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-09-27', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-09-27' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-09-30', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-09-30' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-09-30', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-09-30' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-10-01', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-10-01' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-10-01', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-10-01' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-10-02', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-10-02' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-10-02', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-10-02' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-10-03', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-10-03' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-10-03', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-10-03' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-10-04', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-10-04' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-10-04', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-10-04' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-10-07', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-10-07' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-10-07', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-10-07' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-10-08', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-10-08' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-10-08', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-10-08' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-10-09', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-10-09' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-10-09', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-10-09' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-10-10', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-10-10' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-10-10', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-10-10' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-10-11', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-10-11' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-10-11', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-10-11' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-10-14', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-10-14' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-10-14', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-10-14' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-10-15', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-10-15' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-10-15', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-10-15' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-10-16', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-10-16' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-10-16', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-10-16' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-10-17', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-10-17' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-10-17', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-10-17' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-10-18', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-10-18' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-10-18', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-10-18' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-10-21', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-10-21' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-10-21', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-10-21' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-10-22', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-10-22' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-10-22', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-10-22' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-10-23', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-10-23' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-10-23', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-10-23' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-10-24', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-10-24' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-10-24', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-10-24' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-10-25', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-10-25' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-10-25', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-10-25' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-10-28', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-10-28' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-10-28', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-10-28' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-10-29', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-10-29' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-10-29', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-10-29' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-10-30', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-10-30' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-10-30', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-10-30' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-10-31', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-10-31' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-10-31', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-10-31' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-11-01', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-11-01' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-11-01', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-11-01' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-11-04', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-11-04' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-11-04', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-11-04' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-11-05', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-11-05' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-11-05', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-11-05' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-11-06', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-11-06' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-11-06', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-11-06' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-11-07', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-11-07' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-11-07', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-11-07' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-11-08', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-11-08' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-11-08', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-11-08' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-11-11', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-11-11' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-11-11', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-11-11' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-11-12', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-11-12' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-11-12', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-11-12' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-11-13', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-11-13' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-11-13', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-11-13' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-11-14', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-11-14' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-11-14', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-11-14' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-11-15', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-11-15' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-11-15', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-11-15' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-11-18', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-11-18' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-11-18', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-11-18' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-11-19', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-11-19' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-11-19', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-11-19' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-11-21', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-11-21' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-11-21', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-11-21' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-11-22', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-11-22' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-11-22', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-11-22' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-11-25', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-11-25' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-11-25', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-11-25' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-11-26', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-11-26' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-11-26', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-11-26' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-11-27', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-11-27' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-11-27', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-11-27' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-11-28', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-11-28' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-11-28', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-11-28' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-11-29', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-11-29' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-11-29', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-11-29' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-12-02', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-12-02' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-12-02', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-12-02' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-12-03', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-12-03' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-12-03', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-12-03' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-12-04', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-12-04' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-12-04', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-12-04' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-12-05', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-12-05' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-12-05', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-12-05' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-12-06', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-12-06' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-12-06', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-12-06' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-12-09', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-12-09' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-12-09', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-12-09' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-12-10', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-12-10' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-12-10', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-12-10' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-12-11', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-12-11' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-12-11', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-12-11' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-12-12', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-12-12' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-12-12', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-12-12' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-12-13', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-12-13' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2024-12-13', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2024-12-13' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-03-03', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-03-03' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-03-03', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-03-03' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-03-04', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-03-04' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-03-04', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-03-04' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-03-05', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-03-05' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-03-05', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-03-05' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-03-06', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-03-06' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-03-06', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-03-06' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-03-07', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-03-07' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-03-07', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-03-07' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-03-10', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-03-10' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-03-10', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-03-10' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-03-11', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-03-11' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-03-11', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-03-11' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-03-12', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-03-12' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-03-12', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-03-12' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-03-13', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-03-13' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-03-13', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-03-13' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-03-14', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-03-14' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-03-14', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-03-14' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-03-17', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-03-17' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-03-17', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-03-17' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-03-18', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-03-18' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-03-18', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-03-18' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-03-19', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-03-19' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-03-19', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-03-19' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-03-20', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-03-20' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-03-20', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-03-20' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-03-21', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-03-21' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-03-21', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-03-21' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-03-25', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-03-25' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-03-25', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-03-25' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-03-26', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-03-26' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-03-26', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-03-26' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-03-27', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-03-27' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-03-27', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-03-27' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-03-28', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-03-28' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-03-28', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-03-28' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-03-31', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-03-31' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-03-31', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-03-31' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-04-01', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-04-01' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-04-01', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-04-01' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-04-03', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-04-03' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-04-03', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-04-03' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-04-04', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-04-04' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-04-04', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-04-04' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-04-07', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-04-07' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-04-07', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-04-07' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-04-08', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-04-08' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-04-08', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-04-08' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-04-09', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-04-09' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-04-09', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-04-09' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-04-10', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-04-10' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-04-10', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-04-10' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-04-11', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-04-11' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-04-11', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-04-11' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-04-14', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-04-14' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-04-14', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-04-14' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-04-15', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-04-15' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-04-15', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-04-15' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-04-16', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-04-16' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-04-16', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-04-16' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-04-17', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-04-17' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-04-17', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-04-17' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-04-18', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-04-18' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-04-18', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-04-18' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-04-21', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-04-21' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-04-21', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-04-21' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-04-22', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-04-22' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-04-22', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-04-22' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-04-23', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-04-23' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-04-23', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-04-23' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-04-24', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-04-24' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-04-24', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-04-24' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-04-25', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-04-25' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-04-25', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-04-25' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-04-28', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-04-28' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-04-28', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-04-28' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-04-29', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-04-29' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-04-29', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-04-29' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-04-30', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-04-30' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-04-30', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-04-30' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-05-02', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-05-02' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-05-02', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-05-02' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-05-05', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-05-05' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-05-05', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-05-05' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-05-06', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-05-06' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-05-06', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-05-06' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-05-07', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-05-07' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-05-07', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-05-07' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-05-08', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-05-08' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-05-08', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-05-08' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-05-09', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-05-09' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-05-09', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-05-09' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-05-12', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-05-12' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-05-12', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-05-12' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-05-13', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-05-13' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-05-13', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-05-13' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-05-14', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-05-14' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-05-14', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-05-14' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-05-15', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-05-15' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-05-15', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-05-15' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-05-16', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-05-16' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-05-16', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-05-16' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-05-19', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-05-19' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-05-19', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-05-19' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-05-20', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-05-20' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-05-20', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-05-20' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-05-21', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-05-21' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-05-21', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-05-21' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-05-22', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-05-22' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-05-22', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-05-22' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-05-23', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-05-23' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-05-23', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-05-23' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-05-26', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-05-26' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-05-26', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-05-26' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-05-27', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-05-27' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-05-27', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-05-27' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-05-28', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-05-28' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-05-28', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-05-28' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-05-29', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-05-29' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-05-29', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-05-29' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-05-30', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-05-30' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-05-30', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-05-30' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-06-02', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-06-02' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-06-02', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-06-02' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-06-03', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-06-03' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-06-03', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-06-03' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-06-04', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-06-04' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-06-04', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-06-04' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-06-05', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-06-05' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-06-05', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-06-05' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-06-06', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-06-06' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-06-06', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-06-06' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-06-09', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-06-09' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-06-09', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-06-09' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-06-10', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-06-10' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-06-10', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-06-10' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-06-11', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-06-11' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-06-11', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-06-11' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-06-12', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-06-12' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-06-12', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-06-12' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-06-13', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-06-13' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-06-13', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-06-13' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-06-16', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-06-16' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-06-16', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-06-16' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-06-18', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-06-18' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-06-18', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-06-18' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-06-19', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-06-19' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-06-19', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-06-19' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-06-23', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-06-23' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-06-23', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-06-23' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-06-24', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-06-24' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-06-24', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-06-24' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-06-25', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-06-25' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-06-25', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-06-25' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-06-26', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-06-26' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-06-26', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-06-26' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-06-27', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-06-27' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-06-27', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-06-27' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-06-30', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-06-30' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-06-30', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-06-30' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-08-01', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-08-01' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-08-01', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-08-01' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-08-04', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-08-04' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-08-04', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-08-04' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-08-05', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-08-05' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-08-05', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-08-05' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-08-06', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-08-06' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-08-06', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-08-06' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-08-07', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-08-07' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-08-07', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-08-07' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-08-08', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-08-08' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-08-08', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-08-08' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-08-11', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-08-11' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-08-11', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-08-11' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-08-12', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-08-12' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-08-12', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-08-12' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-08-13', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-08-13' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-08-13', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-08-13' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-08-14', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-08-14' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-08-14', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-08-14' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-08-15', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-08-15' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-08-15', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-08-15' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-08-18', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-08-18' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-08-18', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-08-18' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-08-19', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-08-19' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-08-19', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-08-19' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-08-20', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-08-20' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-08-20', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-08-20' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-08-21', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-08-21' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-08-21', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-08-21' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-08-22', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-08-22' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-08-22', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-08-22' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-08-25', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-08-25' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-08-25', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-08-25' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-08-26', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-08-26' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-08-26', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-08-26' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-08-27', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-08-27' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-08-27', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-08-27' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-08-28', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-08-28' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-08-28', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-08-28' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-08-29', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-08-29' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-08-29', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-08-29' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-09-01', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-09-01' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-09-01', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-09-01' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-09-02', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-09-02' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-09-02', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-09-02' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-09-03', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-09-03' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-09-03', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-09-03' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-09-04', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-09-04' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-09-04', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-09-04' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-09-05', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-09-05' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-09-05', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-09-05' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-09-08', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-09-08' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-09-08', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-09-08' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-09-09', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-09-09' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-09-09', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-09-09' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-09-10', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-09-10' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-09-10', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-09-10' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-09-11', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-09-11' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-09-11', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-09-11' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-09-12', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-09-12' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-09-12', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-09-12' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-09-15', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-09-15' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-09-15', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-09-15' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-09-16', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-09-16' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-09-16', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-09-16' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-09-17', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-09-17' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-09-17', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-09-17' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-09-18', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-09-18' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-09-18', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-09-18' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-09-19', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-09-19' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-09-19', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-09-19' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-09-22', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-09-22' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-09-22', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-09-22' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-09-23', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-09-23' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-09-23', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-09-23' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-09-24', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-09-24' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-09-24', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-09-24' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-09-25', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-09-25' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-09-25', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-09-25' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-09-26', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-09-26' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-09-26', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-09-26' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-09-29', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-09-29' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-09-29', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-09-29' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-09-30', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-09-30' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-09-30', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-09-30' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-10-01', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-10-01' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-10-01', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-10-01' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-10-02', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-10-02' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-10-02', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-10-02' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-10-03', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-10-03' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-10-03', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-10-03' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-10-06', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-10-06' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-10-06', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-10-06' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-10-07', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-10-07' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-10-07', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-10-07' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-10-08', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-10-08' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-10-08', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-10-08' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-10-09', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-10-09' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-10-09', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-10-09' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-10-10', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-10-10' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-10-10', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-10-10' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-10-13', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-10-13' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-10-13', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-10-13' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-10-14', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-10-14' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-10-14', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-10-14' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-10-15', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-10-15' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-10-15', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-10-15' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-10-16', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-10-16' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-10-16', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-10-16' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-10-17', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-10-17' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-10-17', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-10-17' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-10-20', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-10-20' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-10-20', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-10-20' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-10-21', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-10-21' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-10-21', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-10-21' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-10-22', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-10-22' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-10-22', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-10-22' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-10-23', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-10-23' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-10-23', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-10-23' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-10-24', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-10-24' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-10-24', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-10-24' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-10-27', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-10-27' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-10-27', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-10-27' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-10-28', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-10-28' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-10-28', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-10-28' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-10-29', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-10-29' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-10-29', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-10-29' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-10-30', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-10-30' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-10-30', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-10-30' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-10-31', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-10-31' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-10-31', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-10-31' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-11-03', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-11-03' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-11-03', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-11-03' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-11-04', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-11-04' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-11-04', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-11-04' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-11-05', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-11-05' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-11-05', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-11-05' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-11-06', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-11-06' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-11-06', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-11-06' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-11-07', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-11-07' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-11-07', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-11-07' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-11-10', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-11-10' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-11-10', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-11-10' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-11-11', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-11-11' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-11-11', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-11-11' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-11-12', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-11-12' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-11-12', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-11-12' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-11-13', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-11-13' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-11-13', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-11-13' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-11-14', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-11-14' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-11-14', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-11-14' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-11-17', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-11-17' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-11-17', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-11-17' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-11-18', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-11-18' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-11-18', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-11-18' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-11-19', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-11-19' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-11-19', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-11-19' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-11-21', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-11-21' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-11-21', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-11-21' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-11-24', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-11-24' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-11-24', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-11-24' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-11-25', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-11-25' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-11-25', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-11-25' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-11-26', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-11-26' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-11-26', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-11-26' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-11-27', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-11-27' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-11-27', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-11-27' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-11-28', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-11-28' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-11-28', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-11-28' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-12-01', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-12-01' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-12-01', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-12-01' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-12-02', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-12-02' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-12-02', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-12-02' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-12-03', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-12-03' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-12-03', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-12-03' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-12-04', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-12-04' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-12-04', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-12-04' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-12-05', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-12-05' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-12-05', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-12-05' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-12-08', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-12-08' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-12-08', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-12-08' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-12-09', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-12-09' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-12-09', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-12-09' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-12-10', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-12-10' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-12-10', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-12-10' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-12-11', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-12-11' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-12-11', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-12-11' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-12-12', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-12-12' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-12-12', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-12-12' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-12-15', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-12-15' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2025-12-15', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2025-12-15' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2026-03-02', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2026-03-02' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2026-03-02', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2026-03-02' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2026-03-03', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2026-03-03' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2026-03-03', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2026-03-03' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2026-03-04', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2026-03-04' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2026-03-04', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2026-03-04' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2026-03-05', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2026-03-05' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2026-03-05', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2026-03-05' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2026-03-06', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2026-03-06' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2026-03-06', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2026-03-06' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2026-03-09', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2026-03-09' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2026-03-09', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2026-03-09' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2026-03-10', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2026-03-10' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2026-03-10', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2026-03-10' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2026-03-11', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2026-03-11' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2026-03-11', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2026-03-11' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2026-03-12', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2026-03-12' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2026-03-12', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2026-03-12' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2026-03-13', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2026-03-13' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2026-03-13', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2026-03-13' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2026-03-16', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2026-03-16' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2026-03-16', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2026-03-16' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2026-03-17', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2026-03-17' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2026-03-17', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2026-03-17' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2026-03-18', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2026-03-18' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2026-03-18', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2026-03-18' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2026-03-19', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2026-03-19' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2026-03-19', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2026-03-19' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2026-03-20', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2026-03-20' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2026-03-20', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2026-03-20' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2026-03-23', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2026-03-23' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2026-03-23', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2026-03-23' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2026-03-25', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2026-03-25' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2026-03-25', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2026-03-25' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2026-03-26', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2026-03-26' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2026-03-26', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2026-03-26' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2026-03-27', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2026-03-27' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2026-03-27', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2026-03-27' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2026-03-30', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2026-03-30' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2026-03-30', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2026-03-30' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2026-03-31', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2026-03-31' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2026-03-31', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2026-03-31' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2026-04-01', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2026-04-01' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2026-04-01', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2026-04-01' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2026-04-03', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2026-04-03' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2026-04-03', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2026-04-03' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2026-04-06', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2026-04-06' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2026-04-06', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2026-04-06' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2026-04-07', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2026-04-07' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2026-04-07', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2026-04-07' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2026-04-08', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2026-04-08' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2026-04-08', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2026-04-08' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2026-04-09', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2026-04-09' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2026-04-09', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2026-04-09' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2026-04-10', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2026-04-10' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2026-04-10', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2026-04-10' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2026-04-13', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2026-04-13' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2026-04-13', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2026-04-13' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2026-04-14', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2026-04-14' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2026-04-14', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2026-04-14' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2026-04-15', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2026-04-15' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2026-04-15', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2026-04-15' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2026-04-16', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2026-04-16' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2026-04-16', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2026-04-16' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2026-04-17', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2026-04-17' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2026-04-17', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2026-04-17' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2026-04-20', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2026-04-20' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2026-04-20', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2026-04-20' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2026-04-21', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2026-04-21' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2026-04-21', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2026-04-21' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2026-04-22', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2026-04-22' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2026-04-22', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2026-04-22' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2026-04-23', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2026-04-23' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2026-04-23', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2026-04-23' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2026-04-24', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2026-04-24' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2026-04-24', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2026-04-24' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2026-04-27', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2026-04-27' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2026-04-27', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2026-04-27' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2026-04-28', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2026-04-28' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2026-04-28', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2026-04-28' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2026-04-29', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2026-04-29' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2026-04-29', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2026-04-29' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2026-04-30', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2026-04-30' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2026-04-30', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2026-04-30' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2026-05-04', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2026-05-04' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2026-05-04', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2026-05-04' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2026-05-05', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2026-05-05' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2026-05-05', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2026-05-05' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2026-05-06', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2026-05-06' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2026-05-06', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2026-05-06' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2026-05-07', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2026-05-07' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2026-05-07', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2026-05-07' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2026-05-08', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2026-05-08' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2026-05-08', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2026-05-08' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2026-05-11', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2026-05-11' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2026-05-11', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2026-05-11' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2026-05-12', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2026-05-12' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2026-05-12', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2026-05-12' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2026-05-13', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2026-05-13' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2026-05-13', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2026-05-13' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2026-05-14', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2026-05-14' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2026-05-14', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2026-05-14' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2026-05-15', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2026-05-15' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2026-05-15', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2026-05-15' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2026-05-18', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2026-05-18' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2026-05-18', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2026-05-18' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2026-05-19', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2026-05-19' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2026-05-19', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2026-05-19' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2026-05-20', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2026-05-20' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2026-05-20', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2026-05-20' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2026-05-21', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2026-05-21' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2026-05-21', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2026-05-21' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2026-05-22', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2026-05-22' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2026-05-22', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2026-05-22' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2026-05-26', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2026-05-26' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2026-05-26', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2026-05-26' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2026-05-27', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2026-05-27' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2026-05-27', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2026-05-27' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2026-05-28', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2026-05-28' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2026-05-28', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2026-05-28' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2026-05-29', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2026-05-29' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2026-05-29', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2026-05-29' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2026-06-01', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2026-06-01' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2026-06-01', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2026-06-01' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2026-06-02', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2026-06-02' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2026-06-02', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2026-06-02' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2026-06-03', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2026-06-03' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2026-06-03', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2026-06-03' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2026-06-04', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2026-06-04' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2026-06-04', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2026-06-04' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2026-06-05', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2026-06-05' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2026-06-05', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2026-06-05' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2026-06-08', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2026-06-08' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2026-06-08', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2026-06-08' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2026-06-09', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2026-06-09' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2026-06-09', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2026-06-09' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2026-06-10', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2026-06-10' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2026-06-10', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2026-06-10' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2026-06-11', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2026-06-11' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2026-06-11', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2026-06-11' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2026-06-12', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2026-06-12' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2026-06-12', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2026-06-12' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2026-06-15', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2026-06-15' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2026-06-15', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2026-06-15' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2026-06-16', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2026-06-16' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2026-06-16', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2026-06-16' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2026-06-18', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2026-06-18' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2026-06-18', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2026-06-18' AND c.hora_entrada_tarde_lunes IS NOT NULL;

-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2026-06-19', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2026-06-19' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '2026-06-19', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '2026-06-19' AND c.hora_entrada_tarde_lunes IS NOT NULL;
