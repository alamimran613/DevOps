# If we create volume and mount it to container then all volume data stored in volume directory in host machine
# Example of mounting
docker volume create mydbdata
docker run -i -d --name dbcontainer -e MY_SQL_ROOT_PASSWORD=secretpassword -p 3030:3306 -v mydbdata:/var/lib/mysql mysql:5.7

# Check created volume and data, Host machine
ls /var/lib/docker/volumes/mydbdata/_data
