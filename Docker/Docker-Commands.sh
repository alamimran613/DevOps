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

# 6. Start container without going inside
docker run -i -d --name con1 -p 100:80 ubuntu 

# 7. 
