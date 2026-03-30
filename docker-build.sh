#!/bin/bash

version=development

docker build -t swach/busapp:$BRANCH_NAME .
