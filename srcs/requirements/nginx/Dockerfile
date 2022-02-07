FROM debian:buster

RUN apt-get update 
RUN apt-get install -y nginx 
COPY conf/nginx.conf /etc/nginx/sites-available/default
#change the index and rename it to index.html because of 403 forbidden
COPY conf/index.html /var/www/html/index.nginx-debian.html
RUN mv /var/www/html/index.nginx-debian.html /var/www/html/index.html
CMD nginx -g 'daemon off;'
