#!/bin/bash

version=beta

docker build -t swach/busapp:${version} .
docker push swach/busapp:${version}
