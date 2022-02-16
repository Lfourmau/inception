#!/bin/sh

sed -i "s/mysql_root_pw/$MYSQL_ROOT_PASSWORD/g" /scripts/wp_database.sql
sed -i "s/mysql_database/$MYSQL_DATABASE/g" /scripts/wp_database.sql
sed -i "s/mysql_user/$MYSQL_USER/g" /scripts/wp_database.sql
sed -i "s/mysql_pw/$MYSQL_PASSWORD/g" /scripts/wp_database.sql