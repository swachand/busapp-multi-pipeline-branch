#!/bin/bash

version=production

docker build -t learnitguide/busapp:${version} .
docker push learnitguide/busapp:${version}
