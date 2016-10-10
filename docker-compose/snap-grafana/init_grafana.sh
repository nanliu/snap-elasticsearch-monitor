#!/bin/bash

set -e
set -u
set -o pipefail

curl -XPOST -i http://admin:admin@grafana:3000/api/datasources --data-binary @/etc/snap/grafana-datasource.json -H "Content-Type: application/json"
curl -XPOST -i http://admin:admin@grafana:3000/api/dashboards/db --data-binary @/etc/snap/snap-elasticsearch-dashboard.json -H "Content-Type: application/json"
