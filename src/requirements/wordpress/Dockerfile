FROM alpine:3.18

RUN apk update
RUN apk add php php-fpm php-mysqli php-phar php-mbstring

WORKDIR /var/www/html

RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar \
    && chmod +x wp-cli.phar \
    && mv wp-cli.phar /usr/local/bin/wp

COPY ./tools/www.conf /etc/php81/php-fpm.d/www.conf

COPY ./tools/script.sh /script.sh

EXPOSE 9000

CMD [ "sh", "/script.sh" ]
