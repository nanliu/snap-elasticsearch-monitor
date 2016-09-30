#!/bin/bash

set -e
set -u
set -o pipefail


cmd="docker build -t candysmurf/snap-es-mon-k8s:latest \
  --build-arg BUILD_DATE=$(date +%Y-%m-%d)"

${cmd} -f "docker/Dockerfile" .
