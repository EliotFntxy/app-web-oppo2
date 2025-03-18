
#!/usr/bin/env bash
# exit on error
set -o errexit

pip install -r requirements.txt
cd mi_proyecto  # Cambiar al directorio que contiene manage.py
python manage.py collectstatic --no-input
python manage.py migrate