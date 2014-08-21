#!/usr/bin/env bash
PORT=$1

echo "--------------------------------------------------------------------------------"
echo "Run Django Development Server"
echo "Usage:"
echo "py-django-run.sh <port>"
echo "  port      The server port. Default to 8000"
echo "--------------------------------------------------------------------------------"

# Gets the current timestamp

PORT=$1

if [ "$PORT" = "" ]; then
    PORT='8000'
fi

# Gets the directory that contains a django application
DJ_DIR=/{{project_name}}

if [ "$DJ_DIR" = "" ]; then
    echo "Error! This is not django project"
else
    # Go to the django directory
    cd $DJ_DIR

    # Runs the django server
    python manage.py runserver 0.0.0.0:$PORT
fi
