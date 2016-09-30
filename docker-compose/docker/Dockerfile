FROM alpine:3.4
MAINTAINER Emily Gu <77.ears@gmail.com>

ARG BUILD_DATE

ENV SNAP_VERSION="latest"
ENV SNAP_TRUST_LEVEL=0
ENV SNAP_LOG_LEVEL=1

LABEL vendor="candymurf" \
      name="Alpine 3.4" \
      license="Apache 2.0" \
      build-date=$BUILD_DATE

EXPOSE 8181

RUN apk update && \
    apk add curl && \
    apk add bash && \
    apk add jq && \
    rm -rf /var/cache/apk/*

COPY install_snap_plugins /usr/local/bin/install_snap_plugins
COPY snapd.conf /etc/snap/snapd.conf
COPY example-file-task.yml /opt/snap/plugins/example-file-task.yml
COPY example-influxdb-task.yml /opt/snap/plugins/example-influxdb-task.yml

CMD /usr/local/bin/install_snap_plugins && /opt/snap/bin/snapd -t ${SNAP_TRUST_LEVEL} -l ${SNAP_LOG_LEVEL}
