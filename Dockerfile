#
# Nginx Dockerfile
# Contains basic configuration, with site-specific stuff on the volumes
#

FROM colinrhodes/base

MAINTAINER Colin Rhodes <colin@colin-rhodes.com>

ADD nginx.list /etc/apt/sources.list.d/nginx.list
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys C300EE8C
RUN apt-get update -yq

RUN apt-get -yq install openssl ca-certificates nginx

ENTRYPOINT /usr/sbin/nginx
