#!/bin/bash

version=develop
env="develop"

if  docker ps -a --format '{{.Names}}' | grep "${env}"
then docker stop ${env} &&  docker rm ${env}
fi
docker run -it -d -p 7000:8001 --name ${env} swach/busapp:${version}
