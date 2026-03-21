#!/bin/bash

version=staging

sudo docker build -t learnitguide/busapp:${version} .
sudo docker push learnitguide/busapp:${version}
