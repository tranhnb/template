gunicorn --workers=1 {{ project_name }}.wsgi_local -b 0.0.0.0:8000