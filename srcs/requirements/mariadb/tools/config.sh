#!/bin/sh

service mysql restart
bash /scripts/set_env_datas.sh
mysql < /scripts/wp_database.sql
tail -f