FROM debian:buster

RUN apt-get update && apt-get upgrade
RUN apt-get install -y mariadb-server mariadb-client
COPY tools/config.sh ./scripts/
COPY tools/wp_database.sql ./scripts/
ENTRYPOINT [ "sh", "/scripts/config.sh" ]