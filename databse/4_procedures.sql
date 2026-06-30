-- ============================================================================
-- PROCEDIMIENTO ALMACENADO: registrar_fichada()
-- ============================================================================
-- Objetivo: Implementar la máquina de estados del escáner de DNI
-- Lógica: Recibe un DNI y automáticamente determina si debe registrarse como
--         PRESENTE o TARDANZA, según la hora actual y los horarios
--         del curso del alumno.
--
-- Entrada: p_dni INT
-- Salida: TABLE (success BOOLEAN, id_asistencia BIGINT, estado VARCHAR, mensaje VARCHAR)
-- ============================================================================


-- ============================================================================
-- FUNCIÓN AUXILIAR 1: Obtener nombre del día de semana
-- ============================================================================
-- Convierte el DOW (0-6, donde 0=domingo) a nombre de día en minúsculas
-- para usarlo como sufijo en las columnas de horario de la tabla Cursos

CREATE OR REPLACE FUNCTION obtener_nombre_dia_semana(p_date DATE)
RETURNS VARCHAR AS $$
BEGIN
  RETURN CASE EXTRACT(DOW FROM p_date)
    WHEN 1 THEN 'lunes'
    WHEN 2 THEN 'martes'
    WHEN 3 THEN 'miercoles'
    WHEN 4 THEN 'jueves'
    WHEN 5 THEN 'viernes'
    ELSE NULL  -- Sábado (6) o Domingo (0) → NULL
  END;
END;
$$ LANGUAGE plpgsql IMMUTABLE;


-- ============================================================================
-- FUNCIÓN AUXILIAR 2: Obtener horarios de un turno para un día específico
-- ============================================================================
-- Retorna los horarios (entrada y salida) de un curso para un turno y día dado
-- Uso: SELECT * FROM obtener_horario_turno(id_curso, 'MAÑANA', 'lunes');

CREATE OR REPLACE FUNCTION obtener_horario_turno(
  p_id_curso INT,
  p_turno VARCHAR,
  p_dia_nombre VARCHAR
)
RETURNS TABLE (
  hora_entrada TIME,
  hora_salida TIME
) AS $$
BEGIN
  RETURN QUERY
  SELECT 
    CASE p_turno
      WHEN 'MAÑANA' THEN
        CASE p_dia_nombre
          WHEN 'lunes' THEN c.hora_entrada_maniana_lunes
          WHEN 'martes' THEN c.hora_entrada_maniana_martes
          WHEN 'miercoles' THEN c.hora_entrada_maniana_miercoles
          WHEN 'jueves' THEN c.hora_entrada_maniana_jueves
          WHEN 'viernes' THEN c.hora_entrada_maniana_viernes
          ELSE NULL
        END
      WHEN 'TARDE' THEN
        CASE p_dia_nombre
          WHEN 'lunes' THEN c.hora_entrada_tarde_lunes
          WHEN 'martes' THEN c.hora_entrada_tarde_martes
          WHEN 'miercoles' THEN c.hora_entrada_tarde_miercoles
          WHEN 'jueves' THEN c.hora_entrada_tarde_jueves
          WHEN 'viernes' THEN c.hora_entrada_tarde_viernes
          ELSE NULL
        END
      ELSE NULL
    END AS hora_entrada,
    CASE p_turno
      WHEN 'MAÑANA' THEN
        CASE p_dia_nombre
          WHEN 'lunes' THEN c.hora_salida_maniana_lunes
          WHEN 'martes' THEN c.hora_salida_maniana_martes
          WHEN 'miercoles' THEN c.hora_salida_maniana_miercoles
          WHEN 'jueves' THEN c.hora_salida_maniana_jueves
          WHEN 'viernes' THEN c.hora_salida_maniana_viernes
          ELSE NULL
        END
      WHEN 'TARDE' THEN
        CASE p_dia_nombre
          WHEN 'lunes' THEN c.hora_salida_tarde_lunes
          WHEN 'martes' THEN c.hora_salida_tarde_martes
          WHEN 'miercoles' THEN c.hora_salida_tarde_miercoles
          WHEN 'jueves' THEN c.hora_salida_tarde_jueves
          WHEN 'viernes' THEN c.hora_salida_tarde_viernes
          ELSE NULL
        END
      ELSE NULL
    END AS hora_salida
  FROM Cursos c
  WHERE c.id_curso = p_id_curso;
END;
$$ LANGUAGE plpgsql STABLE;


-- ============================================================================
-- PROCEDIMIENTO PRINCIPAL: registrar_fichada()
-- ============================================================================
-- Implementa la máquina de estados completa del escáner
-- Recibe un DNI y automáticamente:
--   1. Valida que el alumno existe y está ACTIVO
--   2. Detecta en qué turno (MAÑANA/TARDE) está la hora actual
--   3. Checkea excepciones de calendario
--   4. Previene duplicados (anti-rebote)
--   5. Determina el estado (PRESENTE/TARDANZA)
--   6. Registra la asistencia

CREATE OR REPLACE FUNCTION registrar_fichada(p_dni INT)
RETURNS TABLE (
  success BOOLEAN,
  id_asistencia BIGINT,
  estado VARCHAR,
  mensaje VARCHAR
) AS $$
#variable_conflict use_column
-- FIX: la columna de salida "estado" (definida en RETURNS TABLE) entra al
-- namespace de variables de la función y choca con Asistencias.estado y
-- Alumnos.estado dentro de cualquier SQL embebido (ej. el INSERT más abajo).
-- Esta directiva le dice a PL/pgSQL que, ante esa ambigüedad, priorice
-- siempre la columna real de la tabla por sobre la variable de salida.
DECLARE
  -- Variables para datos del alumno
  v_alumno_estado VARCHAR;
  v_alumno_curso INT;
  
  -- Variables de tiempo
  v_hora_actual TIME;
  v_fecha_actual DATE;
  v_dia_semana SMALLINT;
  v_dia_nombre VARCHAR;
  
  -- Variables para horarios
  v_turno VARCHAR;
  v_hora_entrada TIME;
  v_hora_salida TIME;
  
  -- Variables para búsqueda de turno
  v_entrada_maniana TIME;
  v_salida_maniana TIME;
  v_entrada_tarde TIME;
  v_salida_tarde TIME;
  
  -- Variables de resultado
  v_id_asistencia BIGINT;
  v_estado_final VARCHAR;
  v_margen_tolerancia INTERVAL;
  
  -- Variables para validaciones
  v_hay_excepcion BOOLEAN;
  v_ya_existe BOOLEAN;
  
BEGIN
  -- ========================================================================
  -- 1️⃣ OBTENER HORA Y FECHA ACTUAL
  -- ========================================================================
  v_hora_actual := CURRENT_TIME;
  v_fecha_actual := CURRENT_DATE;
  v_dia_semana := EXTRACT(DOW FROM v_fecha_actual)::SMALLINT;

  -- ========================================================================
  -- 2️⃣ VALIDACIÓN: ¿EXISTE EL ALUMNO?
  -- ========================================================================
  -- FIX: calificamos "estado" y "curso_actual" con Alumnos. para evitar la
  -- ambigüedad con la variable de salida "estado" de RETURNS TABLE.
  SELECT Alumnos.estado, Alumnos.curso_actual 
    INTO v_alumno_estado, v_alumno_curso
    FROM Alumnos 
   WHERE dni = p_dni;

  IF NOT FOUND THEN
    RETURN QUERY SELECT 
      FALSE::BOOLEAN,
      NULL::BIGINT,
      NULL::VARCHAR,
      'El alumno no está registrado'::VARCHAR;
    RETURN;
  END IF;

  -- ========================================================================
  -- 3️⃣ VALIDACIÓN: ¿ESTADO = 'ACTIVO'?
  -- ========================================================================
  IF v_alumno_estado != 'ACTIVO' THEN
    RETURN QUERY SELECT 
      FALSE::BOOLEAN,
      NULL::BIGINT,
      NULL::VARCHAR,
      'El alumno está inactivo'::VARCHAR;
    RETURN;
  END IF;

  -- ========================================================================
  -- 4️⃣ VALIDACIÓN: ¿NO ES FIN DE SEMANA?
  -- ========================================================================
  -- DOW: 0=domingo, 1=lunes, ..., 5=viernes, 6=sábado
  IF v_dia_semana IN (0, 6) THEN
    RETURN QUERY SELECT 
      FALSE::BOOLEAN,
      NULL::BIGINT,
      NULL::VARCHAR,
      'No se toman asistencias los fines de semana'::VARCHAR;
    RETURN;
  END IF;

  -- ========================================================================
  -- 5️⃣ OBTENER NOMBRE DEL DÍA
  -- ========================================================================
  v_dia_nombre := obtener_nombre_dia_semana(v_fecha_actual);

  -- ========================================================================
  -- 6️⃣ BUSCAR TURNO VIGENTE (MAÑANA o TARDE)
  -- ========================================================================
  -- Primero intenta MAÑANA
  SELECT hora_entrada, hora_salida 
    INTO v_entrada_maniana, v_salida_maniana
    FROM obtener_horario_turno(v_alumno_curso, 'MAÑANA', v_dia_nombre);

  IF v_entrada_maniana IS NOT NULL 
     AND v_hora_actual BETWEEN v_entrada_maniana AND v_salida_maniana THEN
    v_turno := 'MAÑANA';
    v_hora_entrada := v_entrada_maniana;
    v_hora_salida := v_salida_maniana;
  ELSE
    -- Intenta TARDE
    SELECT hora_entrada, hora_salida 
      INTO v_entrada_tarde, v_salida_tarde
      FROM obtener_horario_turno(v_alumno_curso, 'TARDE', v_dia_nombre);

    IF v_entrada_tarde IS NOT NULL 
       AND v_hora_actual BETWEEN v_entrada_tarde AND v_salida_tarde THEN
      v_turno := 'TARDE';
      v_hora_entrada := v_entrada_tarde;
      v_hora_salida := v_salida_tarde;
    ELSE
      -- No encontró turno vigente
      RETURN QUERY SELECT 
        FALSE::BOOLEAN,
        NULL::BIGINT,
        NULL::VARCHAR,
        'El alumno no tiene clases en este horario'::VARCHAR;
      RETURN;
    END IF;
  END IF;

  -- ========================================================================
  -- 7️⃣ CHECKEAR EXCEPCIONES DE CALENDARIO
  -- ========================================================================
  SELECT EXISTS (
    SELECT 1 FROM Excepciones_Calendario
     WHERE fecha = v_fecha_actual
       AND (tipo_alcance = 'GLOBAL' OR id_curso = v_alumno_curso)
     LIMIT 1
  ) INTO v_hay_excepcion;

  IF v_hay_excepcion THEN
    RETURN QUERY SELECT 
      FALSE::BOOLEAN,
      NULL::BIGINT,
      NULL::VARCHAR,
      'Excepción de calendario'::VARCHAR;
    RETURN;
  END IF;

  -- ========================================================================
  -- 8️⃣ CHECKEAR ANTI-REBOTE (¿EXISTE REGISTRO DUPLICADO?)
  -- ========================================================================
  SELECT EXISTS (
    SELECT 1 FROM Asistencias
     WHERE dni_alumno = p_dni
       AND fecha = v_fecha_actual
       AND turno = v_turno
     LIMIT 1
  ) INTO v_ya_existe;

  IF v_ya_existe THEN
    RETURN QUERY SELECT 
      FALSE::BOOLEAN,
      NULL::BIGINT,
      NULL::VARCHAR,
      'Filtro Anti-Rebote: registro duplicado'::VARCHAR;
    RETURN;
  END IF;

  -- ========================================================================
  -- 9️⃣ MÁQUINA DE ESTADOS: DETERMINAR ESTADO (PRESENTE o TARDANZA)
  -- ========================================================================
  -- Nota: AUSENTE se registra en procedimiento separado al cerrar turno
  v_margen_tolerancia := INTERVAL '15 minutes';

  IF v_hora_actual <= v_hora_entrada + v_margen_tolerancia THEN
    v_estado_final := 'PRESENTE';
  ELSE
    v_estado_final := 'TARDANZA';
  END IF;

  -- ========================================================================
  -- 🔟 INSERT EN ASISTENCIAS
  -- ========================================================================
  INSERT INTO Asistencias (dni_alumno, fecha, hora_entrada, estado, turno)
    VALUES (p_dni, v_fecha_actual, v_hora_actual, v_estado_final, v_turno)
    RETURNING Asistencias.id_asistencia INTO v_id_asistencia;

  -- ========================================================================
  -- 1️⃣1️⃣ RETORNAR ÉXITO
  -- ========================================================================
  RETURN QUERY SELECT 
    TRUE::BOOLEAN,
    v_id_asistencia::BIGINT,
    v_estado_final::VARCHAR,
    CASE v_estado_final
      WHEN 'PRESENTE' THEN 'Presente Normal'
      WHEN 'TARDANZA' THEN 'Tardanza'
      WHEN 'AUSENTE' THEN 'Ausente (cierre de turno)'
      ELSE 'Error desconocido'
    END::VARCHAR;

EXCEPTION WHEN OTHERS THEN
  RETURN QUERY SELECT 
    FALSE::BOOLEAN,
    NULL::BIGINT,
    NULL::VARCHAR,
    ('Error en registrar_fichada: ' || SQLERRM)::VARCHAR;

END;
$$ LANGUAGE plpgsql;


-- ============================================================================
-- PROCEDIMIENTO: registrar_ausentes_cierre_turno()
-- ============================================================================
-- Objetivo: Registrar automáticamente como AUSENTE a todos los alumnos
--           ACTIVOS que tienen horario para un turno pero NO tienen registro
--           de asistencia hoy en ese turno.
--
-- Entrada: p_turno VARCHAR ('MAÑANA' o 'TARDE')
-- Salida: TABLE (total_registrados INT, mensaje VARCHAR)
--
-- Flujo:
--   1. Valida que el turno sea válido
--   2. Para CADA alumno ACTIVO:
--      - Obtiene su curso
--      - Verifica si tiene horario para ese turno hoy
--      - Verifica si NO existe registro para hoy en ese turno
--      - Si cumple: INSERT como AUSENTE
--   3. Retorna cantidad de ausentes registrados
-- ============================================================================

CREATE OR REPLACE FUNCTION registrar_ausentes_cierre_turno(p_turno VARCHAR)
RETURNS TABLE (
  total_registrados INT,
  mensaje VARCHAR
) AS $$
DECLARE
  v_fecha_actual DATE;
  v_dia_semana SMALLINT;
  v_dia_nombre VARCHAR;
  v_contador INT := 0;
  v_alumno_record RECORD;
  v_tiene_horario BOOLEAN;
  v_tiene_asistencia BOOLEAN;
  v_hora_entrada TIME;
  v_hora_salida TIME;
  
BEGIN
  -- ========================================================================
  -- 1️⃣ VALIDACIÓN: ¿TURNO ES VÁLIDO?
  -- ========================================================================
  IF UPPER(p_turno) NOT IN ('MAÑANA', 'TARDE') THEN
    RETURN QUERY SELECT 
      0::INT,
      'Error: turno debe ser MAÑANA o TARDE'::VARCHAR;
    RETURN;
  END IF;

  -- ========================================================================
  -- 2️⃣ OBTENER FECHA Y DÍA ACTUAL
  -- ========================================================================
  v_fecha_actual := CURRENT_DATE;
  v_dia_semana := EXTRACT(DOW FROM v_fecha_actual)::SMALLINT;

  -- Validar no es fin de semana
  IF v_dia_semana IN (0, 6) THEN
    RETURN QUERY SELECT 
      0::INT,
      'No se registran ausentes los fines de semana'::VARCHAR;
    RETURN;
  END IF;

  v_dia_nombre := obtener_nombre_dia_semana(v_fecha_actual);

  -- ========================================================================
  -- 3️⃣ ITERAR SOBRE TODOS LOS ALUMNOS ACTIVOS
  -- ========================================================================
  FOR v_alumno_record IN (
    SELECT dni, curso_actual FROM Alumnos WHERE estado = 'ACTIVO'
  ) LOOP

    -- ====================================================================
    -- 4️⃣ VERIFICAR SI TIENE HORARIO PARA ESTE TURNO HOY
    -- ====================================================================
    SELECT hora_entrada, hora_salida 
      INTO v_hora_entrada, v_hora_salida
      FROM obtener_horario_turno(v_alumno_record.curso_actual, UPPER(p_turno), v_dia_nombre);

    -- Si no tiene horario para este turno → siguiente alumno
    IF v_hora_entrada IS NULL THEN
      CONTINUE;
    END IF;

    -- ====================================================================
    -- 5️⃣ VERIFICAR SI YA EXISTE REGISTRO PARA HOY EN ESTE TURNO
    -- ====================================================================
    SELECT EXISTS (
      SELECT 1 FROM Asistencias
       WHERE dni_alumno = v_alumno_record.dni
         AND fecha = v_fecha_actual
         AND turno = UPPER(p_turno)
       LIMIT 1
    ) INTO v_tiene_asistencia;

    -- Si ya existe registro → siguiente alumno
    IF v_tiene_asistencia THEN
      CONTINUE;
    END IF;

    -- ====================================================================
    -- 6️⃣ INSERTAR COMO AUSENTE
    -- ====================================================================
    BEGIN
      INSERT INTO Asistencias (dni_alumno, fecha, hora_entrada, estado, turno)
        VALUES (v_alumno_record.dni, v_fecha_actual, NULL::TIME, 'AUSENTE', UPPER(p_turno));
      
      v_contador := v_contador + 1;
    EXCEPTION WHEN OTHERS THEN
      -- Ignorar errores individuales y continuar con el siguiente alumno
      NULL;
    END;

  END LOOP;

  -- ========================================================================
  -- 7️⃣ RETORNAR RESULTADO
  -- ========================================================================
  RETURN QUERY SELECT 
    v_contador::INT,
    ('Se registraron ' || v_contador::TEXT || ' ausentes para el turno ' || UPPER(p_turno))::VARCHAR;

EXCEPTION WHEN OTHERS THEN
  RETURN QUERY SELECT 
    0::INT,
    ('Error en registrar_ausentes_cierre_turno: ' || SQLERRM)::VARCHAR;

END;
$$ LANGUAGE plpgsql;

-- ============================================================================
-- FIN DEL SCRIPT
-- ============================================================================