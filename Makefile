all :
	docker-compose -f ./src/docker-compose.yml up -d

clean :
	docker-compose -f ./src/docker-compose.yml down

fclean :
	docker-compose -f ./src/docker-compose.yml down --rmi all -v
