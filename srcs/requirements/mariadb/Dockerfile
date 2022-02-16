FROM debian:buster

RUN apt-get update && apt-get upgrade
RUN apt-get install -y mariadb-server mariadb-client
COPY tools/* ./scripts/
COPY conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf
ENTRYPOINT [ "sh", "/scripts/config.sh" ]