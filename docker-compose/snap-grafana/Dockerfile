FROM grafana/grafana:latest
MAINTAINER Emily Gu <77.ears@gmail.com>

RUN apt-get -qq update && apt-get -qq -y install curl
  
CMD mkdir -p /etc/snap

COPY grafana-datasource.json /etc/snap/grafana-datasource.json
COPY snap-elasticsearch-dashboard.json /etc/snap/snap-elasticsearch-dashboard.json
COPY init_grafana.sh /usr/local/bin/init_grafana.sh
RUN chmod +x /usr/local/bin/init_grafana.sh

CMD /usr/local/bin/init_grafana.sh

