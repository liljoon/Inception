FROM debian:11

RUN apt-get -y update && apt-get install -y mariadb-server mariadb-client

COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

COPY ./tools/script.sh /script.sh

CMD [ "/bin/bash", "/script.sh" ]
