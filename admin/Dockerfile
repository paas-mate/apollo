FROM ttbb/base:jdk8

ENV APOLLO_HOME /opt/sh/apollo

WORKDIR /opt/sh/apollo/apollo-admin

COPY source /opt/sh/apollo/apollo-admin/hzj

ARG version=1.9.1
ARG download=1.9.1-github

RUN wget https://github.com/ctripcorp/apollo/releases/download/v$version/apollo-adminservice-$download.zip  && \
    unzip apollo-adminservice-$download.zip && \
    rm -rf apollo-adminservice-$download.zip && \
    cp hzj/conf/apollo-admin.properties config/application-github.properties && \
    cp hzj/conf/apollo-adminservice.conf apollo-adminservice.conf && \
    mkdir /opt/sh/apollo/apollo-admin/logs

WORKDIR /opt/sh/apollo

CMD ["/usr/bin/dumb-init", "bash", "-vx", "/opt/sh/apollo/apollo-admin/hzj/scripts/start.sh"]