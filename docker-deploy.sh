#!/bin/bash

version=qa
env="qa"

if docker ps -a --format '{{.Names}}' | grep "${env}"
then
docker stop ${env} &&  docker rm ${env}
fi
docker run -it -d -p 8082:8001 --name ${env} swach/busapp:${version}
