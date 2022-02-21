

all :
	mkdir -p /home/fourmau/data/wp /home/lfourmau/data/db
	cd ./srcs && docker compose up

clean :
	docker kill mariadb wordpress nginx

fclean :
	docker stop $$(docker ps -qa); docker rm $$(docker ps -qa); docker rmi -f $$(docker images -qa); docker volume rm $$(docker volume ls -q); docker network rm $$(docker network ls -q)

re : fclean all