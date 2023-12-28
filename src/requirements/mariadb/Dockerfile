FROM debian:11

RUN apt-get -y update && apt-get install -y mariadb-server
# RUN mysql_secure_installation

COPY ./tools/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

COPY ./tools/script.sh /script.sh


EXPOSE 3306

CMD [ "/bin/bash", "/script.sh" ]
