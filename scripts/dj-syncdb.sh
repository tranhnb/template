#!/usr/bin/env bash

# Gets the directory that contains a django application
DJ_DIR=/{{project_name}}

if [ "$DJ_DIR" = "" ]; then
    echo "Error! This is not django project"
else
    # Go to the django directory
    cd $DJ_DIR

    # Synchronize django app database
    python manage.py syncdb --migrate
fi
