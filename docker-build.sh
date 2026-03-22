#!/bin/bash

version=production

docker build -t swach/busapp:${version} .
docker push swach/busapp:${version}
