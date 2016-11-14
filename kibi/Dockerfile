FROM sirensolutions/kibi-community-standalone:4.5.4-SNAPSHOT

COPY supervisord.conf /etc/supervisord.conf
COPY entrypoint.sh /tmp/entrypoint.sh
RUN chmod +x /tmp/entrypoint.sh

RUN apt-get update && apt-get install -y netcat

CMD ["/tmp/entrypoint.sh"]
