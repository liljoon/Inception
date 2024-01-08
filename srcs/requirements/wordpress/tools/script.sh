wp core download

wp config create --dbhost=mariadb --dbname=${DB_NAME} --dbuser=${DB_USER} --dbpass=${DB_PASSWORD} --locale=KO
sleep 1;
if ! wp core is-installed; then
    wp core install --url=${DOMAIN_NAME} --title="Inception" --admin_user=${WP_ADMIN_NAME} --admin_password=${WP_ADMIN_PASSWORD} --admin_email=${WP_ADMIN_EMAIL}
    wp user create ${WP_USER_NAME} ${WP_USER_EMAIL} --user_pass=${WP_USER_PASSWORD}
fi
php-fpm81 -F
