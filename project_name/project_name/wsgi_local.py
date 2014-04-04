import os
from wsgi import *

#DEBUG MODE
os.environ["DJANGO_SETTINGS_MODULE"] = "{{ project_name }}.settings.local"