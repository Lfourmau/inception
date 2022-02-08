FROM debian:buster

RUN apt-get update && apt-get install -y php-fpm php-cli wget
RUN mkdir -p /var/www/html
RUN wget http://fr.wordpress.org/latest-fr_FR.tar.gz && tar -xzvf latest-fr_FR.tar.gz --directory /var/www/html/
# COPY conf/php-fpm.conf /etc/php7/php-fpm.conf
COPY conf/wp-config.php /var/www/html/wordpress/wp-config.php
RUN rm /var/www/html/wordpress/wp-config-sample.php && rm latest-fr_FR.tar.gz
RUN chown -R www-data:www-data /var/www/html/wordpress/
RUN service php7.3-fpm restart
CMD tail -f 
#php-fpm -F
#fpm7.3

