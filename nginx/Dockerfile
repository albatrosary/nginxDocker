FROM ubuntu:14.04

MAINTAINER  albatrosary <fumio.sagawa@gmail.com>

RUN apt-get update && \
    apt-get install -y -q nginx && \
    rm -Rf /etc/nginx/sites-enabled/default && \
    rm -rf /var/lib/apt/lists/*

VOLUME ["/etc/nginx","/var/log/nginx"]

EXPOSE 443
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]

