#!/usr/bin/env bash

DJ_DIR=/{{project_name}}

if [ "$DJ_DIR" = "" ]; then
    echo "Error! This is not django project"
else
    cd $DJ_DIR
    python manage.py shell
fi
