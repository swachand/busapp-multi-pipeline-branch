#!/bin/bash

version=qa

docker build -t swach/busapp:${version} .
