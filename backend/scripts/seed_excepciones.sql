-- ==========================================
-- SCRIPT DE EXCEPCIONES (CALENDARIO)
-- ==========================================
-- Inserta excepciones de ejemplo para Excepciones_Calendario.
-- Se recomienda ejecutar después de:
--   databse/1_esquema.sql (o scripts equivalentes)
--   backend/scripts/seed_db.sql (para que existan Cursos)
--
-- Nota:
--   - tipo_alcance: 'GLOBAL' o 'CURSO'
--   - si tipo_alcance='GLOBAL', id_curso puede ser NULL
-- ==========================================

INSERT INTO Excepciones_Calendario (fecha, id_curso, motivo, tipo_alcance) VALUES
  ('2026-03-24', NULL, 'Feriado Nacional', 'GLOBAL'),
  ('2026-04-02', NULL, 'Día No Laborable (Escuela)', 'GLOBAL'),
  ('2026-05-01', NULL, 'Día del Trabajador', 'GLOBAL'),
  ('2026-05-25', NULL, 'Día del Estudiante', 'GLOBAL'),
  ('2026-06-17', NULL, 'Acto Escolar', 'GLOBAL'),
  ('2026-06-20', NULL, 'Receso Académico', 'GLOBAL');

  -- Excepciones puntuales por curso (ejemplos)
  -- Se dejan inicialmente vacías las excepciones puntuales para evitar que el seed de asistencias falle
  -- por trigger/validación de calendario.
  -- Ejemplos (descomentá si querés):
  -- ('2026-03-10', 23, 'Falta de Profesor (Curso 23)', 'CURSO'),
  -- ('2026-04-15', 1,  'Reparación de Aulas (Curso 1)', 'CURSO'),
  -- ('2026-05-07', 14, 'Capacitación Docente (Curso 14)', 'CURSO');


