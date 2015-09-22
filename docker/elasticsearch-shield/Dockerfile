FROM bigboards/elasticsearch-__arch__

MAINTAINER bigboards (hello@bigboards.io)

RUN \
  /elasticsearch/bin/plugin -i elasticsearch/license/latest && \
  /elasticsearch/bin/plugin -i elasticsearch/shield/latest

#         ES
#     +---------+
EXPOSE 9200 9300

CMD ["/elasticsearch/bin/elasticsearch"]
