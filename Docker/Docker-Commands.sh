################ Basic Container Commands for Container Start/stop/run ##############

# 1. Search Docker Images from Docker Hub on Terminal
docker search <image name>

# 2. Go Inside Running Container
docker attach <container name>

# 3. Start container and go inside container but when you exit from container then it will be stop
# (run = Create+Start, -it = Interactive Mode + Terminal)
docker run -it --name <container name> <image name> /bin/bash
# Ex - docker run -it con1 ubuntu /bin/bash

# 4. Check Docker Information i.e. Servers, Images, Containers etc
docker info

# 5. Check Running Containers - ps means Process Status
docker ps 

# 6. Login into container - This will start new process in the container's environment (PID)
docker exec -it <container name> /bin/bash

# 7. Login into Running container - This will just connect the standard Input/Output of the main process inside container to corresponding standard Input/Output error of current terminal. 
docker attach container-1

# 8. Start container without going inside
docker run -i -d --name con1 -p 100:80 ubuntu 

########################## Dockerfile #######################################

# 9. Create Dockerfile
nano Dockerfile

# 10. Create Image using Dockerfile
docker build -t <Image Name> .
# Ex - docker build -t alamimran613/image .

############################### Volume ######################################

# 11. Share volume with another container from source container
# If con1 has volume then when we create con2 then con1 volume share with con2
docker run -it --name <New container name> --privileged=true --volumes-from <Container name that contains volume> <image name> /bin/bash
# Ex - docker run -it --name con2 --privileged=true --volumes-from con1 ubuntu /bin/bash

# 12. Create container with volume without Dockerfile, With command line
docker run -it --name con3 -v /volume2 ubuntu /bin/bash

# 13. Map Host machine directory to container
docker run -it --name con1 -v /home/ec2-user:/volume --privileged=true ubuntu /bin/bash
# Here (/home/ec2-user directory is host machine directory):(/volume is container directory where host's machine given directory will be mapped) 

######################## Networking ##########################################

# 14. Check exposed ports by container
docker port con1

# 15. Check Docker Networks
docker network ls

# 16. Check Your Own IP
hostname -I

# 17. Create Docker Network
docker network create mynetwork

# 18. Create container with own network
docker run -i -d --name con1 --network mynetwork ubuntu

# 19. Create Container with Host Machine Network - If we use this then we no need to expose or publish port. This will use ports and IP address of our own host machine, Any app expose any port then it will be exposed automatic on host machine.
docker run -i -d --name con1 --network host ubuntu

# 20. Create Container without network access - This will restrict any kind of Networking
docker run -i -d --name con1 --network none ubuntu


