FROM debian:buster

RUN apt-get update && apt-get install -y php-fpm php-cli wget
RUN mkdir -p /var/www/lfourmau && touch /var/www/lfourmau/index.php
RUN wget http://fr.wordpress.org/latest-fr_FR.tar.gz && tar -xzvf latest-fr_FR.tar.gz --directory /var/www/lfourmau
# COPY conf/php-fpm.conf /etc/php7/php-fpm.conf
COPY conf/wp-config.php /var/www/lfourmau/wordpress/wp-config.php
RUN service php7.3-fpm restart
CMD tail -f 

