When you specify a tmpfs mount in Docker, it will automatically create the directory inside the container if it does not already exist.
When you create a tmpfs mount in a Docker container and store data on it, the data will reside in the container's RAM. However, this data is volatile and will not persist if the container stops. Here’s what happens in detail:

1. **Start the Container**: You start the container with a tmpfs mount, and the directory specified in the tmpfs mount is created and mounted as a tmpfs.
   
    ```sh
    docker run -d --name mycontainer --tmpfs /app/tmp:rw,size=100m myimage
    ```

2. **Store Data**: You store some data in the tmpfs-mounted directory inside the running container.

    ```sh
    docker exec mycontainer sh -c 'echo "some data" > /app/tmp/data.txt'
    ```

3. **Stop the Container**: You stop the container.

    ```sh
    docker stop mycontainer
    ```

    When the container stops, the tmpfs mount, which resides in the container’s RAM, is destroyed. Therefore, all data stored in the tmpfs mount is lost.

4. **Start the Container Again**: You start the container again.

    ```sh
    docker start mycontainer
    ```

    When the container starts, Docker re-initializes the tmpfs mount at `/app/tmp`. However, because tmpfs is a volatile storage medium, it does not retain any data that was written to it before the container was stopped. The `/app/tmp` directory will be empty or reset to its initial state (empty or containing any initial data you might copy there during container startup).

    ```sh
    docker exec mycontainer ls /app/tmp
    ```

    This will show that the directory is empty:

    ```sh
    # Output: should be empty if there was no initial data setup
    ```

### Summary

Tmpfs mounts in Docker provide ephemeral storage that is ideal for temporary data needs, such as caching or session data. However, because tmpfs uses RAM and is not persistent:

- **Data stored in tmpfs is lost when the container stops**.
- **When the container is restarted, the tmpfs mount is re-created, but without any of the previously stored data**.

If you need persistent storage that survives container restarts, you should use Docker volumes or bind mounts instead of tmpfs. Docker volumes are stored on the host filesystem and are designed to persist data beyond the lifecycle of individual containers.