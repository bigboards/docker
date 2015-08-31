FROM bigboards/base-__arch__

MAINTAINER bigboards (hello@bigboards.io)

# install curl
RUN apt-get update && apt-get install -y wget

RUN wget -qO - http://cdn.skylable.com/GPG-KEY-skylable.asc | sudo apt-key add -

RUN echo "deb http://cdn.skylable.com/debian trusty main" > /etc/apt/sources.list

RUN apt-get update && apt-get install -y sx

ADD bbsx.sh /usr/sbin/bbsx.sh
RUN chmod 777 /usr/sbin/bbsx.sh

ADD sxsetup /usr/sbin/sxsetup
RUN chmod 777 /usr/sbin/sxsetup

#       http
#     +------+
EXPOSE 80 443

CMD ["/bin/bash"]