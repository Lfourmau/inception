#!/bin/sh

service php7.3-fpm start
cd /var/www/html/wordpress/
rm wp-config-sample.php
wp core install --url=localhost --title=Titletest --admin_user=“boss” --admin_password=1234 --admin_email=boss@boss.fr --allow-root
wp language core activate fr --allow-root
wp user create lfourmau lolo@lolo.fr --role=author --user_pass=1234 --allow-root
tail -f