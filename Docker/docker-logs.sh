# This documentation is for docker logs and troubleshooting

# Check container log, For check if container stopped and you want to know the reason
docker logs <container name/id>

# Inspect into container, Get container info.
docker inspect <container name/id>

# Get into docker directory in host machine, In this directory we can find container directory, volumes and many more things.
cd /var/lib/docker

