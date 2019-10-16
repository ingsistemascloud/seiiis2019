sudo docker run -d --name wordpressdb \
    --volume=/home/ejemplo/docker-tmp/db:/var/lib/mysql \
    -e MYSQL_ROOT_PASSWORD=rootwordpress \
    -e MYSQL_DATABASE=wordpress \
    -e MYSQL_USER=usrwordpress \
    -e MYSQL_PASSWORD=secret mariadb



sudo docker run -d --name mywordpress \
    --link wordpressdb:mysql \
    --volume=/home/ejemplo/docker-tmp/www:/var/www/html \
    -e WORDPRESS_DB_USER=usrwordpress \
    -e WORDPRESS_DB_PASSWORD=secret \
    -p 80:80 \
    wordpress

