FROM debian:buster

RUN apt-get update && apt-get upgrade
RUN apt-get install -y mariadb-server
RUN service mysql start
# COPY /tools/wp_database.sql .
# RUN mysql < wp_database.sql
# RUN mysql_secure_installation
CMD ["mysqld"]