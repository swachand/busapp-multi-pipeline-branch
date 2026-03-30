#!/bin/bash

version=pre-prod
env="pre-prod"

if docker ps -a --format '{{.Names}}' | grep "${env}"
then
docker stop ${env} && docker rm ${env}
fi
docker run -it -d -p 8086:8001 --name ${env} swach/busapp:${version}
