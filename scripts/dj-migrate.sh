# Migrate model's schema to DB
# http://south.readthedocs.org
echo "Please enter application name:"
read applicationname

echo "Pickup one option: init or auto"
read option

echo "Start south migration eveluate process"
python manage.py schemamigration $applicationname  --$option

echo "South is syncing up application model schema to DB"
python manage.py migrate $applicationname