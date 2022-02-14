#!/bin/sh

docker system prune -a
docker volume rm srcs_wp_volume
docker volume rm srcs_db_volume
echo -----------VOLUMES------------
docker volume ls
echo -----------NETWORKS------------
docker network ls
echo -----------CONTAINERS------------
docker ps -a
echo -----------IMAGES------------
docker image ls