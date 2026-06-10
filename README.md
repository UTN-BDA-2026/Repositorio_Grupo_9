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
   2. Tardanza: 
        * Condiciones: 
            - El alumno está clasificado como `'activo'`.
            - El alumno tiene un horario de entrada registrado para ese turno.
            - La hora del sistema se encuentra en el intervalo que inicia 15 minutos después de la hora de entrada y finaliza en la hora de salida.
            - No hay registros del DNI en el turno actual.
        * Acción: Se hace un `INSERT` registrando la hora de entrada, la fecha de hoy y el turno actual. El estado por defecto es `'TARDANZA'`.
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


------------------------------------------
Requerimientos Frontend: Sistema de Asistencia para Preceptores

A continuación, se detallan los requerimientos para la interfaz de usuario (UI), estructurados por módulos funcionales. El objetivo es traducir la estructura de la base de datos a componentes visuales interactivos y fáciles de entender, conectando la lógica de tus tablas con la experiencia visual.

1. Módulo de Registro y Gestión de Asistencias
    Este módulo es el corazón del sistema y debe priorizar la velocidad de carga diaria para el preceptor.
    - Vista de Carga Masiva Diaria: Una pantalla que permita seleccionar un curso y una fecha actual, mostrando una tabla con la lista de alumnos inscriptos. Cada fila debe tener botones de selección rápida con estados definidos (Ej: "Presente", "Ausente", "Tardanza") que impactarán directamente en la tabla de asistencias.
    - Formulario de Carga Manual:** Un modal o panel donde el preceptor ingrese el DNI del alumno, la fecha, la hora exacta de entrada y el estado para registrar una asistencia individual de forma manual.
    - Edición Rápida de Registros: Al hacer clic en un registro de asistencia ya guardado, se debe desplegar una ventana para modificar libremente el estado o la hora de entrada.
    - Campo de Justificación: Al editar un estado a "Tardanza" o "Ausente", debe habilitarse obligatoriamente un área de texto ampliada (Textarea) para ingresar la justificación.
2. Módulo de Búsquedas y Consultas
    El preceptor necesita cruzar mucha información para responder a padres o directivos. La interfaz debe facilitar el filtrado de grandes volúmenes de datos.
    - Panel Superior de Filtros: Un conjunto de controles combinables en la parte superior de la vista:
        * Buscador por texto para el DNI del alumno.
        * Menús desplegables (Dropdowns) para seleccionar el Año Lectivo, Curso y División.
        * Selectores de fecha (Datepickers) para buscar un día específico o un rango temporal.
        * Botones de opción (Radio buttons) para filtrar visualmente por turno (Mañana / Tarde).
    - Tabla de Resultados: Una cuadrícula de datos (Data Grid) que muestre los resultados de la búsqueda, permitiendo ordenar las columnas alfanuméricamente haciendo clic en los encabezados.
3. Tablero de Estadísticas (Dashboard)
    Este apartado transforma los datos crudos en información visual útil para el seguimiento académico del alumnado.
    - Tarjetas de Resumen (KPI Cards): Bloques visuales en la parte superior que cuantifiquen rápidamente el total de ausencias, días presentes y tardanzas según los filtros aplicados.
    Panel de Filtros Analíticos: Los mismos controles de filtrado del módulo de búsquedas (DNI, año lectivo, curso, división, fecha y turno) deben integrarse para que el preceptor recalcule las estadísticas en tiempo real.
4. Módulo de Administración (CRUD)
El preceptor debe poder mantener el sistema actualizado (Crear, Leer, Actualizar, Borrar datos maestros).
    - Gestión de Alumnos (ABM): Un formulario de registro que contenga todos los campos requeridos (DNI, Nombre, Apellido, Fecha de Nacimiento, Sexo, Nro. Legajo, Fecha de Ingreso) y un selector vinculado para asignar el ID del curso actual.
    - Gestión de Cursos (ABM): Una pantalla extensa dividida por días de la semana (Lunes a Viernes). Debe utilizar selectores de tiempo (Timepickers) para establecer los rangos exactos de entrada y salida para la mañana y la tarde.
    - Excepciones de Calendario: Un calendario mensual visual donde el preceptor pueda hacer clic en una fecha para agregar un motivo de suspensión (Ej: 'Feriado Nacional' o 'Día del Estudiante').
    - Selector de Alcance de Excepción: Al crear un evento en el calendario, un interruptor (Toggle) o menú debe definir si la excepción es de tipo 'GLOBAL' (toda la escuela) o tipo 'CURSO' (desplegando una lista para seleccionar el curso afectado).
5. Consideraciones Clave de UI/UX
    - Validación de Fechas: Los selectores del calendario en el módulo de registro no deben permitir seleccionar días futuros para cargar asistencias o justificaciones.
    - Prevención de Duplicados en Interfaz: Si el preceptor intenta cargar una misma asistencia dos veces en un día, el backend debe verificar el estado y mostrar una alerta amigable ("El alumno ya tiene un registro hoy") antes de que la base de datos lance un error crítico de restricción de clave primaria.
    - Retroalimentación Visual: Cada vez que el preceptor edite una justificación o cargue un nuevo registro manual, el sistema debe mostrar una pequeña notificación emergente (Toast) confirmando que los datos se guardaron correctamente.
