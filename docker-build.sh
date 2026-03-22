#!/bin/bash

version=development

docker build -t learnitguide/busapp:${version} .
docker push learnitguide/busapp:${version}
