#!/bin/bash

version=pre-prod

docker build -t swach/busapp:${version} .
