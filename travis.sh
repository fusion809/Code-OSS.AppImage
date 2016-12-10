#!/bin/bash

# Build on Travis CI with or without Docker

set -e

if [ ! $(env | grep TRAVIS_JOB_ID ) ] ; then
  echo "This script is supposed to run on Travis CI"
  exit 1
fi

RECIPE="${1}"
DOCKER=$(echo "${RECIPE}" | cut -d "-" -f 1) # Allow e.g., a recipe called "inkscape-standalone" to use the "inkscape" Docker image

sudo mkdir -p /out/

sudo su -c "bash -ex Recipe"

sudo ls -lh /out/*.AppImage
