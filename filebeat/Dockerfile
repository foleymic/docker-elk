FROM debian:jessie

ENV FILEBEAT_VERSION 5.0.0

RUN apt-get update && apt-get install -y curl && \
    curl -L -O https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-${FILEBEAT_VERSION}-amd64.deb && \
    dpkg -i filebeat-${FILEBEAT_VERSION}-amd64.deb && \
    rm -f filebeat-${FILEBEAT_VERSION}-amd64.deb

CMD ["/usr/share/filebeat/bin/filebeat", "-e", "-v", "-c", "/etc/filebeat/filebeat.yml"]