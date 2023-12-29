FROM alpine:3.18

RUN apk update
RUN apk add nginx openssl envsubst

COPY ./tools/default.conf /etc/nginx/http.d/default.template

COPY ./tools/script.sh /script.sh

EXPOSE 80

CMD [ "/bin/sh", "/script.sh"]
