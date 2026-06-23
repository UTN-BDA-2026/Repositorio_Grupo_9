-- ============================================================================
-- MIGRACIÓN: Permitir hora_entrada NULL en Asistencias
-- ============================================================================
-- Motivo: Un alumno AUSENTE no tiene hora de entrada real. El procedimiento
-- registrar_ausentes_cierre_turno() inserta hora_entrada = NULL para estos
-- casos, pero la columna tenía NOT NULL — eso hacía fallar cada INSERT
-- individual en silencio (el loop atrapa la excepción y sigue de largo),
-- por lo que el cierre de turno nunca registraba ausentes en la práctica.
--
-- Ejecutar este script UNA SOLA VEZ contra la base ya creada con 1_esquema.sql.
-- Si estás levantando la base desde cero, podés en cambio editar directamente
-- 1_esquema.sql (quitar el NOT NULL de esa línea) y no correr esta migración.
-- ============================================================================

ALTER TABLE Asistencias
  ALTER COLUMN hora_entrada DROP NOT NULL;

-- También quitamos el DEFAULT CURRENT_TIME: para una fichada real (PRESENTE/
-- TARDANZA) el backend siempre manda una hora explícita, y para AUSENTE
-- queremos que quede NULL en vez de "ahora" por accidente si algún INSERT
-- futuro se olvida de pasar el valor.
ALTER TABLE Asistencias
  ALTER COLUMN hora_entrada DROP DEFAULT;

-- ============================================================================
-- FIN DE LA MIGRACIÓN
-- ============================================================================
