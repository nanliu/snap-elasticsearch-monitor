#!/bin/bash

set -e
set -u
set -o pipefail


cmd="docker build -t candysmurfhub/snap-es-mon-k8s:latest"

${cmd} -f "snap-elasticsearch-monitor/Dockerfile" .
