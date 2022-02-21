#!/bin/sh

sed -i "s/mysql_root_pw/1234/g" /scripts/wp_database.sql
sed -i "s/mysql_database/wordpress/g" /scripts/wp_database.sql
sed -i "s/mysql_user/wordpress/g" /scripts/wp_database.sql
sed -i "s/mysql_pw/wordpress/g" /scripts/wp_database.sql