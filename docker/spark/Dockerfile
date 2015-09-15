FROM bigboards/java-7-__arch__

MAINTAINER bigboards <hello@bigboards.io>

USER root

# Install Python to support PySpark
RUN apt-get update && apt-get install -y -q \
    python


RUN curl -s http://d3kbcqa49mib13.cloudfront.net/spark-1.4.1-bin-hadoop2.6.tgz | tar -xz -C /opt
RUN cd /opt && ln -s ./spark-1.4.1-bin-hadoop2.6 spark

#        master    worker
#     +---------+---------+
EXPOSE 7077 8080 7078 8081

CMD ["/bin/bash"]