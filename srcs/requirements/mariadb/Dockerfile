FROM debian:buster

RUN apt-get update && apt-get upgrade
RUN apt-get install -y mariadb-server mariadb-client
COPY tools/* ./scripts/
COPY conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf
RUN bash /scripts/set_env_datas.sh
RUN bash /scripts/config.sh
CMD ["mysqld"]