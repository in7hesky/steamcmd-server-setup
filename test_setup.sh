#!/bin/bash

IMAGE_NAME="s_test"

for id in $(docker ps -aq); do docker rm $id; done

if docker images | grep -q $IMAGE_NAME; then
	docker rmi $IMAGE_NAME
fi

docker build -t $IMAGE_NAME .

echo "See $LOG_FILE for test logs."
docker run --init -it --name $IMAGE_NAME $IMAGE_NAME
