# TODO - Actualización de requirements

- [x] Revisar dependencias faltantes según el código (FastAPI + asyncpg vs psycopg2).

- [x] Actualizar `backend/requirements.txt` agregando dependencias necesarias (psycopg2-binary, requests, etc.).

- [x] Verificar que los nombres de paquetes coinciden con imports reales en el proyecto.

- [ ] Ejecutar un `pip install -r backend/requirements.txt` para validar que compila e importa todo (en Windows puede fallar por `psycopg2-binary` si no hay MSVC).

- [ ] (Opcional) Unificar implementación de API: decidir si se usa `backend/api.py` (psycopg2) o `backend/server_fastapi.py` (asyncpg) para que requirements no quede con dependencias innecesarias.


