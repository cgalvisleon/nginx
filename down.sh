#!/bin/bash

# stop the running containers
docker-compose -p my-nginx -f ./nginx.yml down

# list the running containers
docker ps -a