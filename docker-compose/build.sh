#!/bin/bash

set -e
set -u
set -o pipefail


cmd="docker build -t candysmurf/snap-es-monitor-docker:latest \
  --build-arg BUILD_DATE=$(date +%Y-%m-%d)"

${cmd} -f "docker/Dockerfile" .
