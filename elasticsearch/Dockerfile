FROM elasticsearch:5.1.1

ENV ES_JAVA_OPTS="-Des.path.conf=/etc/elasticsearch"
RUN apt-get update && apt-get install -y vim nano

RUN elasticsearch-plugin install --batch com.floragunn:search-guard-5:5.1.1-9
RUN chmod +x /usr/share/elasticsearch/plugins/search-guard-5/tools/sgadmin.sh

RUN sed -i -E "s|info|debug|g" /usr/share/elasticsearch/config/log4j2.properties

#RUN wget http://search.maven.org/remotecontent?filepath=com/floragunn/dlic-search-guard-auth-http-jwt/5.0-2/dlic-search-guard-auth-http-jwt-5.0-2-jar-with-dependencies.jar -o dlic-search-guard-auth-http-jwt-5.0-2.jar
#RUN wget http://oss.sonatype.org/service/local/artifact/maven/content?c=jar-with-dependencies&r=releases&g=com.floragunn&a=dlic-search-guard-auth-http-jwt&v=5.0-2 -o dlic-search-guard-auth-http-jwt-5.0-2-jar-with-dependencies
#RUN wget http://search.maven.org/remotecontent?filepath=com/floragunn/dlic-search-guard-auth-http-jwt/5.0-2/dlic-search-guard-auth-http-jwt-5.0-2.jar -o dlic-search-guard-auth-http-jwt-5.0-2.jar
COPY dlic-search-guard-auth-http-jwt-5.0-2-jar-with-dependencies.jar /usr/share/elasticsearch/plugins/search-guard-5
CMD ["-E", "network.host=0.0.0.0", "-E", "discovery.zen.minimum_master_nodes=1"]

