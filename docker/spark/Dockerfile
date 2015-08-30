FROM bigboards/java-7-__arch__

MAINTAINER bigboards <hello@bigboards.io>

USER root

RUN curl -s http://d3kbcqa49mib13.cloudfront.net/spark-1.3.0-bin-hadoop2.4.tgz | tar -xz -C /opt
RUN cd /opt && ln -s ./spark-1.3.0-bin-hadoop2.4 spark

#        master    worker
#     +---------+---------+
EXPOSE 7077 8080 7078 8081

CMD ["/bin/bash"]