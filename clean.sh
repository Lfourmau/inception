#!/bin/sh

docker system prune -a
echo -----------VOLUMES------------
docker volume ls
echo -----------NETWORKS------------
docker network ls
echo -----------CONTAINERS------------
docker ps -a
echo -----------IMAGES------------
docker image ls
rm -rf wp_data && rm -rf ./mariadb_data
mkdir wp_data mariadb_data