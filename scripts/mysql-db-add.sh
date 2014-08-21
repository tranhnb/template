#!/bin/bash

echo "--------------------------------------------------------------------------------"
echo "Create new MySql Database"
echo "Usage:"
echo "mysql-db-add.sh <db-name> <user-name> <user-pass>"
echo "  db-name      The database name. Required"
echo "--------------------------------------------------------------------------------"

# Gets the current timestamp

DB_NAME=$1

if [ "$DB_NAME" = "" ]; then
    echo "<db-name> is required"
    echo "ERROR"

else
    DB_USER=root
    DB_PASS="root"

    # Create database and add user / previleges
    SQL="USE mysql"
    SQL="$SQL; CREATE DATABASE IF NOT EXISTS $DB_NAME CHARACTER SET UTF8"
    SQL="$SQL; GRANT ALL PRIVILEGES on $DB_NAME.* to $DB_USER@localhost IDENTIFIED BY \"$DB_PASS\""
    SQL="$SQL; FLUSH PRIVILEGES"
    echo $SQL | mysql -u root --password=$DB_PASS

    echo "Database $DB_NAME created"
    echo "$DB_USER/$DB_USER access granted"
    echo "Runs: 'mysql -u $DB_USER $DB_NAME' to access the database;"
fi