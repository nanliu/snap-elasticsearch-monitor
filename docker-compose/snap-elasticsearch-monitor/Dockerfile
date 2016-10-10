FROM intelsdi/snap:alpine
MAINTAINER Emily Gu <77.ears@gmail.com>

ENV SNAP_VERSION='0.16.1'
ENV FILE_PUB_PLUGIN_VER='2'
ENV ELASTICSEARCH_COL_PLUGIN_VER='3'
ENV INFLUXDB_PUB_PLUGIN_VER='15' 


ADD http://snap.ci.snap-telemetry.io/plugins/snap-plugin-publisher-file/$FILE_PUB_PLUGIN_VER/linux/x86_64/snap-plugin-publisher-file /opt/snap/plugins/snap-plugin-publisher-file
ADD http://snap.ci.snap-telemetry.io/plugins/snap-plugin-collector-elasticsearch/$ELASTICSEARCH_COL_PLUGIN_VER/linux/x86_64/snap-plugin-collector-elasticsearch /opt/snap/plugins/snap-plugin-collector-elasticsearch
ADD http://snap.ci.snap-telemetry.io/plugins/snap-plugin-publisher-influxdb/$INFLUXDB_PUB_PLUGIN_VER/linux/x86_64/snap-plugin-publisher-influxdb /opt/snap/plugins/snap-plugin-publisher-influxdb

RUN chmod 755 /opt/snap/plugins/*

COPY example-file-task.yml /opt/snap/plugins/example-file-task.yml 
COPY example-influxdb-task.yml /opt/snap/plugins/example-influxdb-task.yml
