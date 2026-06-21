import os
from datetime import date, timedelta

# Arrancamos cuando entraron los actuales alumnos de 5to año
fecha_inicio = date(2022, 3, 2) 
fecha_fin = date(2026, 6, 20)   

# Lista simple de meses y días feriados recurrentes
feriados_mes_dia = [
    (3, 24), (4, 2), (5, 1), (5, 25), (6, 17), (6, 20), (7, 9), (8, 17), (10, 12), (11, 20)
]

directorio_actual = os.path.dirname(os.path.abspath(__file__))
ruta_sql = os.path.join(directorio_actual, "seed_asistencias.sql")

with open(ruta_sql, "w", encoding="utf-8") as file:
    file.write("-- ==========================================\n")
    file.write("-- SCRIPT DE HISTORIAL DE ASISTENCIAS (5 AÑOS)\n")
    file.write("-- ==========================================\n\n")

    dia_actual = fecha_inicio
    while dia_actual <= fecha_fin:
        
        # Filtramos días no lectivos
        es_fin_de_semana = dia_actual.weekday() >= 5
        es_vacaciones_verano = dia_actual.month in [1, 2] or (dia_actual.month == 12 and dia_actual.day > 15)
        es_vacaciones_invierno = dia_actual.month == 7
        es_feriado = (dia_actual.month, dia_actual.day) in feriados_mes_dia
        
        if not es_fin_de_semana and not es_vacaciones_verano and not es_vacaciones_invierno and not es_feriado:
            
            # MAGIA SQL: Dos pasadas independientes para capturar los dobles turnos a la perfección
            sql_dia = f"""
-- Fichada Turno Mañana
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '{dia_actual}', 'MAÑANA',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '{dia_actual}' AND c.hora_entrada_maniana_lunes IS NOT NULL;

-- Fichada Turno Tarde
INSERT INTO Asistencias (dni_alumno, fecha, turno, estado)
SELECT a.dni, '{dia_actual}', 'TARDE',
    CASE WHEN random() > 0.15 THEN 'PRESENTE' WHEN random() > 0.05 THEN 'AUSENTE' ELSE 'TARDANZA' END
FROM Alumnos a JOIN Cursos c ON a.curso_actual = c.id_curso
WHERE a.estado = 'ACTIVO' AND a.fecha_ingreso <= '{dia_actual}' AND c.hora_entrada_tarde_lunes IS NOT NULL;
"""
            
            file.write(sql_dia)
            
        dia_actual += timedelta(days=1)

print("¡Historial de 5 años generado! Vas a tener un volumen masivo de registros para probar tus índices.")