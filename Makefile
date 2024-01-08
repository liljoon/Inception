all :
	make init
	make up

init :
	mkdir /home/isunwoo/data
	mkdir /home/isunwoo/data/wordpress && chmod 777 /home/isunwoo/data/wordpress
	mkdir /home/isunwoo/data/db && chmod 777 /home/isunwoo/data/db

up :
	docker-compose -f ./srcs/docker-compose.yml up -d --build

down :
	docker-compose -f ./srcs/docker-compose.yml down

fclean :
	docker-compose -f ./srcs/docker-compose.yml down --rmi all -v
	rm -rf /home/isunwoo/data
