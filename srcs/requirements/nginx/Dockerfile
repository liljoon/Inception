FROM alpine:3.18

RUN apk update
RUN apk add nginx openssl envsubst

COPY ./conf/default.conf /etc/nginx/http.d/default.template

COPY ./tools/script.sh /script.sh

EXPOSE 443

CMD [ "/bin/sh", "/script.sh"]
