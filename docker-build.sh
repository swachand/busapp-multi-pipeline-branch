#!/bin/bash

version=develop

docker build -t swach/busapp:${version} .
