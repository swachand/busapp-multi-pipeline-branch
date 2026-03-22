#!/bin/bash

version=production
env="production"

if docker ps -a --format '{{.Names}}' | grep "${env}"
then
docker stop ${env} && docker rm ${env}
fi
docker run -it -d -p 9000:8001 --name ${env} swach/busapp:${version}
