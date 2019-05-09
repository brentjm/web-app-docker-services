#!/bin/bash

################################################################################
# Script name: docker_run.sh
# Description: Builds a Docker container running PostgreSQL
# Args: None
# Author: Brent Maranzno
# email: brent_maranzano@gmail.com

# Usage:
# ./docker_run.sh
# see: https://hub.docker.com/_/postgres
################################################################################

echo "Bulding image"
docker build -t postgres-custom .

echo "Creating volume"
docker volume create postgres-data

echo "Creating volume"
docker network create ape

echo "Starting container"
docker run --detach --name postgres \
    --publish 5432:5432/tcp \
    --mount 'type=volume,source=postgres-data,target=/var/lib/postgresql/data' \
    --network=ape \
    postgres-custom

echo "Please wait for the container to start." 
echo "Configuration files will be coppied shortly."
sleep 10

echo "Copying configuration"
docker cp pg_hba.conf postgres:/var/lib/postgresql/data/.
