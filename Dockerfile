FROM grafana/grafana:11.3.2 as prod
COPY ./provisioning/ /etc/grafana/provisioning/
