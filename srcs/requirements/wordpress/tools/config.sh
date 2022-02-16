#!/bin/sh

service php7.3-fpm start
cd /var/www/html/wordpress/
rm wp-config-sample.php
sed -i "s/dbname/$WORDPRESS_DB_NAME/g" /var/www/html/wordpress/wp-config.php
sed -i "s/dbuser/$WORDPRESS_DB_USER/g" /var/www/html/wordpress/wp-config.php
sed -i "s/dbpassword/$WORDPRESS_DB_PASSWORD/g" /var/www/html/wordpress/wp-config.php
wp core install --url=localhost --title=MySuperMegaWebsite --admin_user=“boss” --admin_password=1234 --admin_email=boss@boss.fr --allow-root
wp user create lfourmau lolo@lolo.fr --role=author --user_pass=1234 --allow-root
tail -f