sudo docker run --name mymariadb -e MYSQL_ROOT_PASSWORD=test -d mariadb

sudo docker run --name myphpadmin -d --link mymariadb:db -p 80:80 phpmyadmin/phpmyadmin
