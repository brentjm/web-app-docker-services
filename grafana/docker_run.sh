#!/bin/bash

################################################################################
# Script name: docker_run.sh
# Description: Runs a container with Grafana
# Args: None
# Author: Brent Maranzno
# email: brent_maranzano@gmail.com

# see: https://hub.docker.com/r/grafana/grafana/
# and  https://grafana.com/docs/installation/docker/
################################################################################
echo "Creating volume"
docker volume create grafana-data

echo "Creating network"
#docker network create ape

echo "Starting container"
docker run --detach --name grafana \
    --publish 3000:3000/tcp \
    --network=ape \
    --mount 'type=volume,source=grafana-data,target=/var/lib/grafana' \
    grafana/grafana
