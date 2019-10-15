sudo docker volume prune
sudo docker container prune
sudo docker system prune
sudo docker rmi -f $(sudo docker images -aq)
