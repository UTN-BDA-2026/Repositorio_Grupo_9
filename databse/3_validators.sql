-- ============================================================================
-- VALIDATORS Y TRIGGERS: Integridad de Datos
-- ============================================================================
-- Objetivo: Proteger la integridad de datos mediante triggers que validen
--           operaciones diretas (bypass de procedimientos) y datos coherentes.
--
-- ============================================================================


-- ============================================================================
-- TRIGGER 1: Validar INSERT/UPDATE en Asistencias (bypass de procedimientos)
-- ============================================================================
-- Objetivo: Prevenir inserciones directas a Asistencias que violen la lógica
--           de negocio (ej: alumno inactivo, duplicados, etc.)
--
-- Validaciones:
--   1. El alumno debe estar ACTIVO
--   2. No puede haber duplicado (dni, fecha, turno)
--   3. El estado debe ser válido (CHECK ya lo hace, pero explícito)
--   4. Si hay excepción de calendario → rechazar
--
-- Trigger ON: INSERT, UPDATE

CREATE OR REPLACE FUNCTION trg_validar_asistencia()
RETURNS TRIGGER AS $$
DECLARE
  v_alumno_estado VARCHAR;
  v_hay_excepcion BOOLEAN;
  v_hay_duplicado BOOLEAN;
BEGIN
  
  -- ====================================================================
  -- 1. Validar que el alumno existe y está ACTIVO
  -- ====================================================================
  SELECT estado INTO v_alumno_estado
    FROM Alumnos
   WHERE dni = NEW.dni_alumno;

  IF NOT FOUND THEN
    RAISE EXCEPTION 'El alumno con DNI % no existe', NEW.dni_alumno;
  END IF;

  IF v_alumno_estado != 'ACTIVO' THEN
    RAISE EXCEPTION 'El alumno con DNI % está inactivo y no puede tener asistencias registradas', 
                    NEW.dni_alumno;
  END IF;

  -- ====================================================================
  -- 2. Validar que no exista duplicado (dni, fecha, turno)
  -- ====================================================================
  -- Excluir el registro actual si es UPDATE
  SELECT EXISTS (
    SELECT 1 FROM Asistencias
     WHERE dni_alumno = NEW.dni_alumno
       AND fecha = NEW.fecha
       AND turno = NEW.turno
       AND id_asistencia != COALESCE(OLD.id_asistencia, -1)
     LIMIT 1
  ) INTO v_hay_duplicado;

  IF v_hay_duplicado THEN
    RAISE EXCEPTION 'Ya existe un registro de asistencia para el DNI % en la fecha % y turno %',
                    NEW.dni_alumno, NEW.fecha, NEW.turno;
  END IF;

  -- ====================================================================
  -- 3. Validar que no haya excepción de calendario
  -- ====================================================================
  SELECT EXISTS (
    SELECT 1 FROM Excepciones_Calendario
     WHERE fecha = NEW.fecha
       AND (tipo_alcance = 'GLOBAL' OR id_curso = (
         SELECT curso_actual FROM Alumnos WHERE dni = NEW.dni_alumno
       ))
     LIMIT 1
  ) INTO v_hay_excepcion;

  IF v_hay_excepcion THEN
    RAISE EXCEPTION 'La fecha % tiene una excepción de calendario y no pueden registrarse asistencias',
                    NEW.fecha;
  END IF;

  RETURN NEW;

END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_validar_asistencia_insert_update
  BEFORE INSERT OR UPDATE ON Asistencias
  FOR EACH ROW
  EXECUTE FUNCTION trg_validar_asistencia();


-- ============================================================================
-- TRIGGER 2: Validar coherencia de horarios en Cursos
-- ============================================================================
-- Objetivo: Asegurar que en cada turno y día, hora_entrada < hora_salida
--
-- Ejemplo de validación:
--   hora_entrada_maniana_lunes < hora_salida_maniana_lunes
--   hora_entrada_tarde_lunes < hora_salida_tarde_lunes
--   ... para todos los días (lunes a viernes)
--
-- Trigger ON: INSERT, UPDATE

CREATE OR REPLACE FUNCTION trg_validar_horarios_curso()
RETURNS TRIGGER AS $$
BEGIN

  -- Mañana - Lunes
  IF NEW.hora_entrada_maniana_lunes IS NOT NULL 
     AND NEW.hora_salida_maniana_lunes IS NOT NULL 
     AND NEW.hora_entrada_maniana_lunes >= NEW.hora_salida_maniana_lunes THEN
    RAISE EXCEPTION 'Mañana Lunes: hora_entrada (%) debe ser menor que hora_salida (%)',
                    NEW.hora_entrada_maniana_lunes, NEW.hora_salida_maniana_lunes;
  END IF;

  -- Mañana - Martes
  IF NEW.hora_entrada_maniana_martes IS NOT NULL 
     AND NEW.hora_salida_maniana_martes IS NOT NULL 
     AND NEW.hora_entrada_maniana_martes >= NEW.hora_salida_maniana_martes THEN
    RAISE EXCEPTION 'Mañana Martes: hora_entrada (%) debe ser menor que hora_salida (%)',
                    NEW.hora_entrada_maniana_martes, NEW.hora_salida_maniana_martes;
  END IF;

  -- Mañana - Miércoles
  IF NEW.hora_entrada_maniana_miercoles IS NOT NULL 
     AND NEW.hora_salida_maniana_miercoles IS NOT NULL 
     AND NEW.hora_entrada_maniana_miercoles >= NEW.hora_salida_maniana_miercoles THEN
    RAISE EXCEPTION 'Mañana Miércoles: hora_entrada (%) debe ser menor que hora_salida (%)',
                    NEW.hora_entrada_maniana_miercoles, NEW.hora_salida_maniana_miercoles;
  END IF;

  -- Mañana - Jueves
  IF NEW.hora_entrada_maniana_jueves IS NOT NULL 
     AND NEW.hora_salida_maniana_jueves IS NOT NULL 
     AND NEW.hora_entrada_maniana_jueves >= NEW.hora_salida_maniana_jueves THEN
    RAISE EXCEPTION 'Mañana Jueves: hora_entrada (%) debe ser menor que hora_salida (%)',
                    NEW.hora_entrada_maniana_jueves, NEW.hora_salida_maniana_jueves;
  END IF;

  -- Mañana - Viernes
  IF NEW.hora_entrada_maniana_viernes IS NOT NULL 
     AND NEW.hora_salida_maniana_viernes IS NOT NULL 
     AND NEW.hora_entrada_maniana_viernes >= NEW.hora_salida_maniana_viernes THEN
    RAISE EXCEPTION 'Mañana Viernes: hora_entrada (%) debe ser menor que hora_salida (%)',
                    NEW.hora_entrada_maniana_viernes, NEW.hora_salida_maniana_viernes;
  END IF;

  -- Tarde - Lunes
  IF NEW.hora_entrada_tarde_lunes IS NOT NULL 
     AND NEW.hora_salida_tarde_lunes IS NOT NULL 
     AND NEW.hora_entrada_tarde_lunes >= NEW.hora_salida_tarde_lunes THEN
    RAISE EXCEPTION 'Tarde Lunes: hora_entrada (%) debe ser menor que hora_salida (%)',
                    NEW.hora_entrada_tarde_lunes, NEW.hora_salida_tarde_lunes;
  END IF;

  -- Tarde - Martes
  IF NEW.hora_entrada_tarde_martes IS NOT NULL 
     AND NEW.hora_salida_tarde_martes IS NOT NULL 
     AND NEW.hora_entrada_tarde_martes >= NEW.hora_salida_tarde_martes THEN
    RAISE EXCEPTION 'Tarde Martes: hora_entrada (%) debe ser menor que hora_salida (%)',
                    NEW.hora_entrada_tarde_martes, NEW.hora_salida_tarde_martes;
  END IF;

  -- Tarde - Miércoles
  IF NEW.hora_entrada_tarde_miercoles IS NOT NULL 
     AND NEW.hora_salida_tarde_miercoles IS NOT NULL 
     AND NEW.hora_entrada_tarde_miercoles >= NEW.hora_salida_tarde_miercoles THEN
    RAISE EXCEPTION 'Tarde Miércoles: hora_entrada (%) debe ser menor que hora_salida (%)',
                    NEW.hora_entrada_tarde_miercoles, NEW.hora_salida_tarde_miercoles;
  END IF;

  -- Tarde - Jueves
  IF NEW.hora_entrada_tarde_jueves IS NOT NULL 
     AND NEW.hora_salida_tarde_jueves IS NOT NULL 
     AND NEW.hora_entrada_tarde_jueves >= NEW.hora_salida_tarde_jueves THEN
    RAISE EXCEPTION 'Tarde Jueves: hora_entrada (%) debe ser menor que hora_salida (%)',
                    NEW.hora_entrada_tarde_jueves, NEW.hora_salida_tarde_jueves;
  END IF;

  -- Tarde - Viernes
  IF NEW.hora_entrada_tarde_viernes IS NOT NULL 
     AND NEW.hora_salida_tarde_viernes IS NOT NULL 
     AND NEW.hora_entrada_tarde_viernes >= NEW.hora_salida_tarde_viernes THEN
    RAISE EXCEPTION 'Tarde Viernes: hora_entrada (%) debe ser menor que hora_salida (%)',
                    NEW.hora_entrada_tarde_viernes, NEW.hora_salida_tarde_viernes;
  END IF;

  RETURN NEW;

END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_validar_horarios_curso_insert_update
  BEFORE INSERT OR UPDATE ON Cursos
  FOR EACH ROW
  EXECUTE FUNCTION trg_validar_horarios_curso();


-- ============================================================================
-- FIN DEL SCRIPT
-- ============================================================================
