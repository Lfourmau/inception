FROM debian:buster

RUN apt-get update && apt-get install -y php-fpm php-mysql php-cli wget
RUN mkdir -p /var/www/html/
RUN wget https://fr.wordpress.org/wordpress-5.8.3-fr_FR.tar.gz && tar -xzvf wordpress-5.8.3-fr_FR.tar.gz --directory /var/www/html/
RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && chmod +x wp-cli.phar
RUN mv wp-cli.phar /usr/local/bin/wp
COPY conf/wp-config.php /var/www/html/wordpress/wp-config.php
COPY conf/www.conf /etc/php/7.3/fpm/pool.d/www.conf
RUN chown -R www-data:www-data /var/www/html/wordpress
COPY tools/config.sh ./scripts/
ENTRYPOINT [ "sh", "/scripts/config.sh" ]
#php-fpm -F

