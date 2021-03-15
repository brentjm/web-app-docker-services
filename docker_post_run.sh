#!/bin/bash

################################################################################
# Script name: docker_post_run.sh
# Description: Post container creation configuration
# Args: None
# Author: Brent Maranzno
# email: brent_maranzano@gmail.com

# Usage:
# ./docker_post_run.sh
################################################################################

echo "Copy postgres configuration file."
docker cp ./postgres/pg_hba.conf postgres:/var/lib/postgresql/data/.
