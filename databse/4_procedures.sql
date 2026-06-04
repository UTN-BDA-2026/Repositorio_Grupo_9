CREATE OR REPLACE FUNCTION registrar_asistencia(
    p_dni_alumno INT,
    p_id_turno INT DEFAULT NULL
)
RETURNS TEXT AS $$
DECLARE
    v_now TIMESTAMP := NOW();
    v_fecha DATE := v_now::DATE;
    v_hora TIME := v_now::TIME;
    v_id BIGINT;
    v_hora_entrada TIME;
    v_hora_salida TIME;
    v_estado VARCHAR(50);
    v_hora_fin TIME;
    v_ts_entrada TIMESTAMP;
    v_id_turno INT;
BEGIN
    -- Evita concurrencia por alumno
    PERFORM pg_advisory_xact_lock(p_dni_alumno);

    -- Determinar/validar el turno de la fichada
    IF p_id_turno IS NULL THEN
        -- derivar turno desde la inscripción más reciente del ciclo actual
        SELECT c.id_turno INTO v_id_turno
        FROM inscripciones i
        JOIN cursos c ON i.id_curso = c.id_curso
        WHERE i.dni_alumno = p_dni_alumno
        AND i.ciclo_lectivo = EXTRACT(YEAR FROM v_fecha)::INT
        ORDER BY i.id_inscripcion DESC
        LIMIT 1;

        IF NOT FOUND THEN
            RETURN 'ERROR_NO_INSCRIPCION';
        END IF;
    ELSE
        v_id_turno := p_id_turno;
        -- validar coherencia: que exista una inscripción en ese turno para el ciclo
        PERFORM 1
        FROM inscripciones i
        JOIN cursos c ON i.id_curso = c.id_curso
        WHERE i.dni_alumno = p_dni_alumno
        AND i.ciclo_lectivo = EXTRACT(YEAR FROM v_fecha)::INT
        AND c.id_turno = v_id_turno
        LIMIT 1;

        IF NOT FOUND THEN
            RETURN 'ERROR_TURNO_MISMATCH';
        END IF;
    END IF;

    -- Busca el último registro del día para ese alumno y turno.
    SELECT id_asistencia, hora_entrada, hora_salida, estado
    INTO v_id, v_hora_entrada, v_hora_salida, v_estado
    FROM Asistencias
    WHERE dni_alumno = p_dni_alumno
    AND fecha = v_fecha
    AND id_turno = v_id_turno
    ORDER BY id_asistencia DESC
    LIMIT 1;

    -- Si no existe registro para ese día+turno -> insert entrada
    IF NOT FOUND THEN
        INSERT INTO Asistencias (dni_alumno, id_turno, fecha, hora_entrada)
        VALUES (p_dni_alumno, v_id_turno, v_fecha, v_hora);
        RETURN 'INSERT_ENTRADA';
    END IF;

    -- Si existe registro y no tiene hora_salida -> evaluar salida
    IF v_hora_salida IS NULL THEN
        v_ts_entrada := v_fecha + v_hora_entrada;
        IF v_now - v_ts_entrada < INTERVAL '5 minutes' THEN
            RETURN 'IGNORED_ANTIRREBOTE';
        END IF;

        -- obtener hora_fin del turno (ya tenemos v_id_turno)
        SELECT hora_fin INTO v_hora_fin FROM turnos WHERE id_turno = v_id_turno;

        IF v_hora_fin IS NULL THEN
            RETURN 'ERROR_NO_TURNO_DEFINED';
        END IF;

        IF v_hora < v_hora_fin - INTERVAL '15 minutes' THEN
            UPDATE Asistencias
            SET hora_salida = v_hora, estado = 'RETIRO_ANTICIPADO'
            WHERE id_asistencia = v_id;
            RETURN 'UPDATE_RETIRO_ANTICIPADO';
        ELSE
            UPDATE Asistencias
            SET hora_salida = v_hora, estado = 'SALIDA_NORMAL'
            WHERE id_asistencia = v_id;
            RETURN 'UPDATE_SALIDA_NORMAL';
        END IF;
    END IF;

    -- Si ya tenía hora_salida, crea una nueva entrada para el mismo día+turno
    INSERT INTO Asistencias (dni_alumno, id_turno, fecha, hora_entrada)
    VALUES (p_dni_alumno, v_id_turno, v_fecha, v_hora);
    RETURN 'INSERT_NEW_ENTRADA';

END;
$$ LANGUAGE plpgsql;

        