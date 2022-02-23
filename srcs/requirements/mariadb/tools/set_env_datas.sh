#!/bin/sh

sed -i "s/mysql_root_pw/$ROOT_PASSWORD/g" /scripts/wp_database.sql
sed -i "s/mysql_database/$DB_NAME/g" /scripts/wp_database.sql
sed -i "s/mysql_user/$DB_USER/g" /scripts/wp_database.sql
sed -i "s/mysql_pw/$DB_PASSWORD/g" /scripts/wp_database.sql