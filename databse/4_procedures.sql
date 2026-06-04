CREATE OR REPLACE FUNCTION registrar_asistencia(
    p_dni_alumno INT
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
BEGIN
    -- Evita que dos escaneos del mismo DNI se procesen al mismo tiempo.
    PERFORM pg_advisory_xact_lock(p_dni_alumno);

    -- Busca el último registro del día para ese alumno.
    SELECT id_asistencia, hora_entrada, hora_salida, estado
    INTO v_id, v_hora_entrada, v_hora_salida, v_estado
    FROM Asistencias
    WHERE dni_alumno = p_dni_alumno
    AND fecha = v_fecha
    ORDER BY id_asistencia DESC
    LIMIT 1;

    -- Primer escaneo del día: registra entrada.
    IF NOT FOUND THEN
        INSERT INTO Asistencias (dni_alumno, fecha, hora_entrada)
        VALUES (p_dni_alumno, v_fecha, v_hora);

        RETURN 'Entrada registrada a las ' || v_hora::TEXT;
    END IF;

    -- Si existe una entrada sin salida, decide si es rebote o salida.
    IF v_hora_salida IS NULL THEN
        v_ts_entrada := v_fecha + v_hora_entrada;

        -- Antirrebote: si pasaron menos de 5 minutos, no hace nada.
        IF v_now - v_ts_entrada < INTERVAL '5 minutes' THEN
            RETURN 'Ignorado_antirrebote';
        END IF;

        -- Toma la hora de fin del turno del alumno para el ciclo lectivo actual.
        SELECT t.hora_fin
        INTO v_hora_fin
        FROM inscripciones i
        JOIN cursos c ON i.id_curso = c.id_curso
        JOIN turnos t ON c.id_turno = t.id_turno
        WHERE i.dni_alumno = p_dni_alumno
        AND i.ciclo_lectivo = EXTRACT(YEAR FROM v_fecha)::INT
        ORDER BY i.id_inscripcion DESC
        LIMIT 1;

        -- Si el sistema no encuentra turno, se considera error de datos.
        IF v_hora_fin IS NULL THEN
            RETURN 'Error: no se encontro turno para el alumno';
        END IF;

        -- Retiro anticipado: más de 15 minutos antes de la hora de fin.
        IF v_hora < v_hora_fin - INTERVAL '15 minutes' THEN
            UPDATE Asistencias
            SET hora_salida = v_hora,
                estado = 'RETIRO_ANTICIPADO'
            WHERE id_asistencia = v_id;

            RETURN 'Retiro anticipado registrado';
        ELSE
            UPDATE Asistencias
            SET hora_salida = v_hora,
                estado = 'SALIDA_NORMAL'
            WHERE id_asistencia = v_id;

            RETURN 'Salida normal registrada';
        END IF;
    END IF;

    -- Si ya había salida, se registra un nuevo ingreso para el mismo día.
    INSERT INTO Asistencias (dni_alumno, fecha, hora_entrada)
    VALUES (p_dni_alumno, v_fecha, v_hora);

    RETURN 'Nueva entrada registrada a las ' || v_hora::TEXT;

END;
$$ LANGUAGE plpgsql;

        