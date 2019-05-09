#!/bin/bash

################################################################################
# Script name: docker_run.sh
# Description: Builds a Docker container running influxDB
# Args: None
# Author: Brent Maranzno
# email: brent_maranzano@gmail.com

# Usage:
# ./docker_run.sh
# see: https://hub.docker.com/_/influxdb
################################################################################

echo "Bulding image"
docker build -t influxdb-custom .

echo "Creating volume"
docker volume create influxdb-data

echo "Creating volume"
docker network create ape

docker run --detach --name influxdb \
    --publish 8086:8086 \
    --mount "type=volume,source=influxdb-data,target=/var/lib/influxdb" \
    --mount "type=bind,source=$(pwd)/influxdb.conf,target=/etc/influxdb/influxdb.conf:ro" \
    influxdb-custom -config /etc/influxdb/influxdb.conf
