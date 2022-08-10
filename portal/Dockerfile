FROM ttbb/base:jdk8

ENV APOLLO_HOME /opt/sh/apollo

WORKDIR /opt/sh/apollo/apollo-portal

COPY source /opt/sh/apollo/apollo-portal/hzj

ARG version=1.9.1
ARG download=1.9.1-github

RUN wget https://github.com/ctripcorp/apollo/releases/download/v$version/apollo-portal-$download.zip  && \
    unzip apollo-portal-$download.zip && \
    rm -rf apollo-portal-$download.zip && \
    cp hzj/conf/apollo-portal.properties config/application-github.properties && \
    cp hzj/conf/apollo-portal.conf apollo-portal.conf && \
    mkdir /opt/sh/apollo/apollo-portal/logs

WORKDIR /opt/sh/apollo

CMD ["/usr/local/bin/dumb-init", "bash", "-vx", "/opt/sh/apollo/apollo-portal/hzj/scripts/start.sh"]
