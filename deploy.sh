#!/bin/bash

# stop the running stack nginx
docker stack rm nginx

# pull the latest changes from the remote repository
git get

# build the new image
docker build --no-cache -t my-nginx -f ./Dockerfile .

# deploy the stack nginx
docker stack deploy -c ./nginx.yml nginx

# list the running containers
docker ps -a

# list the running services
docker service ls