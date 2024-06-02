# Volume:
If we do not mount volume while creating container then it will create a volume for us. Every time when container run. So, Mount volume manually. Note: This is mount point with name but while creating volume we do not pass volume name then it will create a volume and mount it with this location.

If out volume path is /volume in base image and when creating container we passed:
docker run -i -d --name con1 -v my-volume:/home/ubuntu/volume-mount
then if volume exists then it will mount on that location else create then mount.
In this situation if we passed volume_name:volume_mount_point then the volume will not create automatically with
random name. Else volume will created because of we mention volume /volume in Dockerfile