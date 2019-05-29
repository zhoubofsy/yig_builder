#!/bin/bash

docker rmi yig_build:v1.0.0
docker build --network=host -t yig_build:v1.0.0 ./
