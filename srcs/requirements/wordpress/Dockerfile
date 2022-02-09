FROM debian:buster

RUN apt-get update && apt-get install -y php-fpm php-mysql php-cli wget
RUN mkdir -p /var/www/wp
RUN wget http://fr.wordpress.org/latest-fr_FR.tar.gz && tar -xzvf latest-fr_FR.tar.gz --directory /var/www/wp
# COPY conf/php-fpm.conf /etc/php7/php-fpm.conf
COPY conf/wp-config.php /var/www/wp/wordpress/wp-config.php
COPY conf/www.conf /etc/php/7.3/fpm/pool.d/www.conf
RUN rm /var/www/wp/wordpress/wp-config-sample.php && rm latest-fr_FR.tar.gz
RUN chown -R www-data:www-data /var/www/wp/wordpress/
COPY tools/config.sh ./scripts/
ENTRYPOINT [ "sh", "/scripts/config.sh" ]
#php-fpm -F
#fpm7.3

