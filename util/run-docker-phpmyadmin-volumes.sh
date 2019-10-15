sudo docker run -d --name mymariadb  \
-e MYSQL_ROOT_PASSWORD=test \
--volume=/home/ejemplo/docker-tmp/db:/var/lib/mysql \
mariadb

sudo docker run -d --name myphpadmin \
--link mymariadb:db -p 80:80 \
--volume=/home/ejemplo/docker-tmp/www:/var/www/html \
phpmyadmin/phpmyadmin
