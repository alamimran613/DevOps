################ Basic Container Commands for Container Start/stop/run ##############

# 1. Search Docker Images from Docker Hub on Terminal
docker search <image name>

# 2. Go Inside Running Container
docker attach <container name>

# 3. Start container and go inside container, but when you exit from the container, it will stop
# (run = Create+Start, -it = Interactive Mode + Terminal)
docker run -it --name <container name> <image name> /bin/bash
# Ex - docker run -it con1 ubuntu /bin/bash

# 4. Check Docker Information, i.e., Servers, Images, Containers, etc.
docker info

# 5. Check Running Containers - `ps` means Process Status
docker ps 

# 6. Login into container - This will start a new process in the container's environment (PID)
docker exec -it <container name> /bin/bash

# 7. Login into a Running container - This will just connect the standard Input/Output of the main process inside the container to the corresponding standard Input/Output error of the current terminal. 
docker attach container-1

# 8. Start a container without going inside
docker run -i -d --name con1 -p 100:80 ubuntu 

# 9. Stop all Running containers
docker stop $(docker ps -a -q)

# 10. Delete all stopped containers
docker rm $(docker ps -a -q)

# 11. Remove all Images
docker rmi -f $(docker images -q)

########################## Dockerfile #######################################

# 12. Create Dockerfile
nano Dockerfile

# 13. Create Image using Dockerfile
docker build -t <Image Name> .
# Ex - docker build -t alamimran613/image .

############################### Volume ######################################

# 14. Share a volume with another container from the source container
# If con1 has a volume, then when we create con2, con1's volume is shared with con2
docker run -it --name <New container name> --privileged=true --volumes-from <Container name that contains volume> <image name> /bin/bash
# Ex - docker run -it --name con2 --privileged=true --volumes-from con1 ubuntu /bin/bash

# 15. Create a container with a volume without a Dockerfile, using the command line
docker run -it --name con3 -v /volume2 ubuntu /bin/bash

# 16. Map a Host machine directory to the container
docker run -it --name con1 -v /home/ec2-user:/volume --privileged=true ubuntu /bin/bash
# Here (/home/ec2-user directory is the host machine directory):(/volume is the container directory where the host's machine given directory will be mapped) 

######################## Networking ##########################################

# 17. Check exposed ports by container
docker port con1

# 18. Check Docker Networks
docker network ls

# 19. Check Your Own IP
hostname -I

# 20. Create Docker Network
docker network create mynetwork

# 21. Create a container with its own network
docker run -i -d --name con1 --network mynetwork ubuntu

# 22. Create a Container with Host Machine Network - If we use this, we don't need to expose or publish ports. This will use the ports and IP address of our own host machine. Any app exposing any port will automatically expose it on the host machine.
docker run -i -d --name con1 --network host ubuntu

# 23. Create a Container without network access - This will restrict any kind of Networking
docker run -i -d --name con1 --network none ubuntu

# 24. Connect your network with a container - When it connects, we can ping using the container name
docker connect mynetwork con1

########################## Docker Hub #########################################

# 25. Login into Docker Hub
docker login

# 26. Create an image from a container
docker commit con1 alamimran613/myimage

# 27. Create an image from a created image with a tag for Docker Hub - Here "myimage" is the image name and "alamimran613/myimage" will be tagged, allowing it to be pushed to Docker Hub - assign a specific tag or label to an existing Docker image. We can also use docker image id for source image name
docker tag myimage alamimran613/myimage

# 28. Push Image to DockerHub
docker push alamimran613/myimage

# 29. Docker Prune
docker system prune -a
# command is used to remove all unused objects in your Docker environment, including stopped containers, unused volumes, and networks. The -a flag is used to remove all unused objects, not just the ones created by the docker system command. This command is helpful to reclaim disk space on your system by cleaning up resources that are no longer in use.

