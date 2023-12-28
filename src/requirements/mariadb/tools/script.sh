service mariadb start

echo "CREATE DATABASE IF NOT EXISTS wordpress;" > db.sql
echo "CREATE USER IF NOT EXISTS '$DB_USER'@'%' IDENTIFIED BY '$DB_PASSWORD';" >> db.sql
echo "GRANT ALL PRIVILEGES ON $DB_USER.* TO '$DB_USER'@'%';" >> db.sql
echo "FLUSH PRIVILEGES;" >> db.sql

mariadb < /db.sql

sleep 1

service mariadb stop

mariadbd-safe
