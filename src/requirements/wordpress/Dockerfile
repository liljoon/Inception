FROM alpine:3.18

RUN apk update
RUN apk add php php-fpm php-mysqli

COPY ./tools/www.conf /etc/php81/php-fpm.d/www.conf

# RUN mkdir /var/www
# RUN mkdir /var/www/html

EXPOSE 9000

CMD [ "php-fpm81", "-F" ]
