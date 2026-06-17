-- ============================================================================
-- ÍNDICES: Optimización de Búsquedas y Consultas
-- ============================================================================
-- Objetivo: Crear índices estratégicos para mejorar la performance de las
--           consultas más frecuentes del sistema.
--
-- Tabla Alumnos: Búsquedas por estado y curso
-- Tabla Asistencias: Búsquedas por DNI, fecha y turno (crítica - tabla grande)
-- Tabla Excepciones_Calendario: Búsquedas por fecha
-- Tabla Inscripciones: Búsquedas por DNI y ciclo lectivo
--
-- ============================================================================


-- ============================================================================
-- ÍNDICES EN TABLA: Asistencias
-- ============================================================================
-- CRÍTICA: Esta tabla es particionada y puede crecer a millones de registros
-- Los índices acá son fundamentales para performance

-- Índice 1: Búsqueda por (DNI, fecha, turno) - checkear duplicados y obtener registros
-- Utilizado en: registrar_fichada() para anti-rebote, búsquedas de historial
CREATE INDEX idx_asistencias_dni_fecha_turno 
  ON Asistencias(dni_alumno, fecha, turno);

-- Índice 2: Búsqueda por fecha - para cierre de turnos y reportes diarios
-- Utilizado en: registrar_ausentes_cierre_turno(), filtros de rango de fechas
CREATE INDEX idx_asistencias_fecha 
  ON Asistencias(fecha);

-- Índice 3: Búsqueda por (fecha, estado) - para estadísticas y reportes
-- Utilizado en: Dashboard, consultas de presentes/ausentes por día
CREATE INDEX idx_asistencias_fecha_estado 
  ON Asistencias(fecha, estado);

-- Índice 4: Búsqueda por (dni_alumno, fecha) - para obtener todas las asistencias de un alumno en un rango
-- Utilizado en: búsqueda de historial del alumno
CREATE INDEX idx_asistencias_dni_fecha 
  ON Asistencias(dni_alumno, fecha);

-- Índice 5: Búsqueda por estado - para filtros
-- Utilizado en: búsqueda por estado (PRESENTE/TARDANZA/AUSENTE)
CREATE INDEX idx_asistencias_estado 
  ON Asistencias(estado);


-- ============================================================================
-- ÍNDICES EN TABLA: Alumnos
-- ============================================================================
-- Índice 1: Búsqueda por estado - para listar solo ACTIVOS
-- Utilizado en: registrar_ausentes_cierre_turno(), UI de alumnos activos
CREATE INDEX idx_alumnos_estado 
  ON Alumnos(estado);

-- Índice 2: Búsqueda por (estado, curso_actual) - para obtener alumnos activos de un curso
-- Utilizado en: Vista de carga masiva diaria, cierre de turno por curso
CREATE INDEX idx_alumnos_estado_curso 
  ON Alumnos(estado, curso_actual);

-- Índice 3: Búsqueda por curso - para relaciones
-- Utilizado en: filtros por curso
CREATE INDEX idx_alumnos_curso 
  ON Alumnos(curso_actual);


-- ============================================================================
-- ÍNDICES EN TABLA: Inscripciones
-- ============================================================================
-- Índice 1: Búsqueda por DNI - para obtener inscripciones de un alumno
-- Utilizado en: historial de cursos del alumno, validaciones
CREATE INDEX idx_inscripciones_dni 
  ON Inscripciones(dni_alumno);

-- Índice 2: Búsqueda por ciclo lectivo - para reportes de ciclos específicos
-- Utilizado en: filtros por ciclo, estadísticas de ciclo
CREATE INDEX idx_inscripciones_ciclo 
  ON Inscripciones(ciclo_lectivo);

-- Índice 3: Búsqueda por (dni_alumno, ciclo_lectivo) - para validaciones rápidas
-- Utilizado en: verificaciones de inscripción en ciclo actual (futuro uso)
CREATE INDEX idx_inscripciones_dni_ciclo 
  ON Inscripciones(dni_alumno, ciclo_lectivo);


-- ============================================================================
-- ÍNDICES EN TABLA: Excepciones_Calendario
-- ============================================================================
-- Índice 1: Búsqueda por fecha - para checkear excepciones al fichar
-- Utilizado en: registrar_fichada(), registrar_ausentes_cierre_turno()
CREATE INDEX idx_excepciones_fecha 
  ON Excepciones_Calendario(fecha);

-- Índice 2: Búsqueda por (fecha, tipo_alcance) - para excepciones globales vs por curso
-- Utilizado en: validación de excepciones (GLOBAL vs CURSO específico)
CREATE INDEX idx_excepciones_fecha_alcance 
  ON Excepciones_Calendario(fecha, tipo_alcance);

-- Índice 3: Búsqueda por id_curso - para ver excepciones de un curso
-- Utilizado en: filtros de excepciones por curso
CREATE INDEX idx_excepciones_curso 
  ON Excepciones_Calendario(id_curso);


-- ============================================================================
-- ÍNDICES EN TABLA: Cursos
-- ============================================================================
-- Índice 1: Búsqueda por (año, división) - para obtener un curso específico
-- Utilizado en: búsqueda de cursos por año y división
CREATE INDEX idx_cursos_anio_division 
  ON Cursos(anio, division);


-- ============================================================================
-- FIN DEL SCRIPT
-- ============================================================================
