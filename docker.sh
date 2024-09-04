#!/bin/bash

image=sunitnayak/ubuntu_webpage

for i in {1..10}
do
    container="c$i"

    # Check if the container exists
    if docker ps -aq -f name="$container" | grep -q "$container"; then
        echo "Container $container exists, deleting and recreating"
        docker container rm -f "$container"
    else
        echo "Container $container does not exist, creating..."
    fi

    # Run the container
    docker container run -d -it --name "$container" -p "500$i:80" "$image"
done
