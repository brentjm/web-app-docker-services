#!/bin/bash

################################################################################
# Script name: docker_pre_run.sh
# Description: Pre container creation configuration
# Args: None
# Author: Brent Maranzno
# email: brent_maranzano@gmail.com

# Usage:
# ./docker_pre_run.sh
################################################################################

echo "Create the nginx configuration from the template"
read -p "Enter the name/IP of nginx host (for reverse proxy): " NAME
sed -e s/NGINX_SERVER_NAME/"${NAME}"/ nginx/app.conf_template > nginx/app.conf

echo "Create the grafana configuration from the template"
read -p "Enter the name/IP of nginx host (for reverse proxy): " NAME
sed -e s/NGINX_SERVER_NAME/"${NAME}"/ nginx/app.conf_template > nginx/app.conf
