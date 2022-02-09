FROM debian:buster

RUN apt-get update && apt-get upgrade
RUN apt-get install -y mariadb-server mariadb-client
RUN service mysql start
COPY tools/config.sh ./scripts/
ENTRYPOINT [ "sh", "/scripts/config.sh" ]