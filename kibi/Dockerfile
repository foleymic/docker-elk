FROM sirensolutions/kibi-community-standalone:4.5.4

COPY supervisord.conf /etc/supervisord.conf
COPY entrypoint.sh /tmp/entrypoint.sh
RUN chmod +x /tmp/entrypoint.sh

RUN apt-get update && apt-get install -y netcat

#RUN /opt/kibi/bin/kibi plugin --install kibrand -u  https://github.com/elasticfence/kibrand/archive/0.4.5.zip

CMD ["/tmp/entrypoint.sh"]
