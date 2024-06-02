# Volume:
If we do not mount volume while creating container then it will create a volume for us. Every time when container run. So, Mount volume manually. Note: This is mount point with name but while creating volume we do not pass volume name then it will create a volume and mount it with this location.

If out volume path is /volume in base image and when creating container we passed:
docker run -i -d --name con1 -v my-volume:/home/ubuntu/volume-mount
then if volume exists then it will mount on that location else create then mount.
In this situation if we passed volume_name:volume_mount_point then the volume will not create automatically with
random name. Else volume will created because of we mention volume /volume in Dockerfile



# Dockerfile syntax and usage info
FROM		- For base image. This command myst be on the top on the Dockerfile
RUN     	- To execute commands, It will create a layer in image, execute commands during creating image
MAINTAINER	- Author/Owner/Description
COPY		- Copy files form local system. We need to provide source, destination (We can't download file from internet)
ADD		    - Similar to copy but it provide feature to download files from internet, also we extract file at docker image side
EXPOSE		- To expose ports such as 8080, 80 etc.
WORKDIR		- To set working directory when we login into container it will we open
CMD		    - Execute commands but during container create
ENTRYPOINT	- Similar to CMD but has higher priority over CMD, This will execute first then CMD will be execute
ENV		    - To set environment variable