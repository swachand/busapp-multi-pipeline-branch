#!/bin/bash

version=staging

docker build -t swach/busapp:${version} .
