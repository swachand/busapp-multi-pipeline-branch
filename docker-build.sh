#!/bin/bash

version=qa

docker build -t swach/busapp:${version} .
docker push swach/busapp:${version}
