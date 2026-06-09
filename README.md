<!-- cSpell:disable -->

1. Filosofía del Sistema (El motor es el cerebro)
    - Frontend "Tonto", Backend "Inteligente": La aplicación de Python (el simulador del escáner) no toma ninguna decisión. Su única función es capturar un DNI y enviarlo a la base de datos.
    - Centralización de la Lógica: Toda la toma de decisiones, validaciones y cambios de estado ocurren dentro del motor de PostgreSQL, específicamente a través de un Procedimiento Almacenado (`registrar_fichada`). Esto garantiza la consistencia de los datos y demuestra el uso avanzado de la base de datos.
    
2. La Máquina de Estados del Escáner (Reglas de Fichada)
Cuando el sistema recibe un DNI, la base de datos evalúa el contexto temporal y decide qué acción tomar basándose en los siguientes escenarios posibles:
   1. Presente Normal:
        * Condiciones: 
            - El alumno está clasificado como `'activo'`.
            - El alumno tiene un horario de entrada registrado para ese turno.
            - La hora del sistema es menor o igual a la hora de entrada más un margen de 15 minutos.
            - No hay registros del DNI en el turno actual.
        * Acción: Se hace un `INSERT` registrando la hora de entrada, la fecha de hoy y el turno actual. El estado por defecto es `'PRESENTE'`.
   2. Presente Tardío: 
        * Condiciones: 
            - El alumno está clasificado como `'activo'`.
            - El alumno tiene un horario de entrada registrado para ese turno.
            - La hora del sistema se encuentra en el intervalo que inicia 15 minutos después de la hora de entrada y finaliza en la hora de salida.
            - No hay registros del DNI en el turno actual.
        * Acción: Se hace un `INSERT` registrando la hora de entrada, la fecha de hoy y el turno actual. El estado por defecto es `'PRESENTE TARDÍO'`.
    3. Filtro Anti-Rebote (Error de escaneo/Duplicado):
        * Condición: Ya hay un registro del DNI en ese turno.
        * Acción: El sistema ignora la transacción (no hace nada) para evitar duplicados.
    4. Ausente:
        * Condiciones: 
            - El alumno está clasificado como `'activo'`.
            - El alumno tiene un horario de entrada registrado para ese turno.
            - La hora del sistema es igual a la hora de salida.
            - No hay registros del DNI en el turno actual.
        * Acción: El sistema automáticamente hace un `INSERT` registrando el DNI del alumno, la fecha de hoy y el turno actual. El estado por defecto es `'AUSENTE'`.
 
3. El Flujo de Trabajo del Preceptor (Intervención Manual)
    - El sistema automatiza todo, pero deja las excepciones para los humanos.
    - El preceptor, a través de la interfaz visual, debe filtrar esos casos puntuales del día y hacer un `UPDATE` manual escribiendo el motivo de una falta justificada (ej: "Faltó por fiebre").

4. Gestión del Histórico Escolar (El modelo de 5 años)
    - Trazabilidad sin redundancia: El sistema está preparado para acompañar al alumno desde 1er año hasta 5to año sin mezclar datos. Esto se logra mediante la tabla intermedia `Inscripciones`, que asocia un DNI a un curso específico por cada `ciclo_lectivo`.
    - Particionamiento para alto rendimiento: Para soportar millones de registros de presentes y ausentes a lo largo de 5 años, la tabla transaccional `Asistencias` no es una tabla gigante, sino que está dividida físicamente en particiones por año (`Asistencias_2022`, `Asistencias_2023`, etc.).
