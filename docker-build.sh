#!/bin/bash

version=development

docker build -t swach/busapp:${version} .
docker push swach/busapp:${version}
