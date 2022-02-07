FROM debian:buster

RUN apt-get update 
RUN apt-get install -y nginx openssl
COPY conf/nginx.conf /etc/nginx/sites-available/default
#change the index and rename it to index.html because of 403 forbidden
COPY conf/index.html /var/www/html/index.nginx-debian.html
RUN mv /var/www/html/index.nginx-debian.html /var/www/html/index.html
#SSL
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -subj \
	"/C=FR/ST=France/L=Lyon/emailAddress=lfourmau@student.42lyon.fr" -keyout /etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/certs/nginx-selfsigned.crt
CMD nginx -g 'daemon off;'
