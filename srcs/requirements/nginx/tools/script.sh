openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/nginx-key.pem -out /etc/ssl/certs/nginx-certificate.pem \
--subj "/C=KR/ST=Seoul/L=Gangnam/O=42Seoul/OU=cadet/CN=${DOMAIN_NAME}"

envsubst '$DOMAIN_NAME' < /etc/nginx/http.d/default.template > /etc/nginx/http.d/default.conf

mv /helloworld.html /var/www/html/helloworld.html

usr/sbin/nginx -g "daemon off;"
