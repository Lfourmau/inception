#!/bin/sh
rm -rf /Users/lfourmau/Desktop/db
rm -rf /Users/lfourmau/Desktop/wp
echo Volume folder deleted
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
mkdir /Users/lfourmau/Desktop/db
mkdir /Users/lfourmau/Desktop/wp
echo Volume folders created