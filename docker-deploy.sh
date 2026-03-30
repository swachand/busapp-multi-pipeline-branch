#!/bin/bash

env=$BRANCH_NAME

echo "Deploying for environment: $env"

# Stop & remove existing container
if docker ps -a --format '{{.Names}}' | grep -w "$env"
then
  docker stop $env && docker rm $env
fi

# Run new container
docker run -d -p 8010:8001 --name $env swach/busapp:$env
