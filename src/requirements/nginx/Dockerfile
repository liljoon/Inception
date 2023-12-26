FROM alpine:3.18

RUN apk update
RUN apk add nginx

COPY ./tools/default.conf /etc/nginx/http.d/default.conf


EXPOSE 80

CMD [ "usr/sbin/nginx", "-g", "daemon off;"]
