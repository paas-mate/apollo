FROM ttbb/apollo:admin AS admin
FROM ttbb/apollo:config AS config
FROM ttbb/apollo:portal AS portal

FROM ttbb/base:jdk8

ENV APOLLO_HOME /opt/sh/apollo

# install mysql first
WORKDIR /opt/sh

RUN wget https://dev.mysql.com/get/mysql80-community-release-el8-1.noarch.rpm && \
    dnf localinstall -qy mysql80-community-release-el8-1.noarch.rpm && \
    rm -rf mysql80-community-release-el8-1.noarch.rpm && \
    dnf module disable -y mysql && \
    dnf install -qy --nogpgcheck mysql-community-server && \
    mysqld --initialize-insecure --user=root

COPY source /opt/sh/apollo

COPY --from=admin /opt/sh/apollo/apollo-admin /opt/sh/apollo/apollo-admin
COPY --from=config /opt/sh/apollo/apollo-config /opt/sh/apollo/apollo-config
COPY --from=portal /opt/sh/apollo/apollo-portal /opt/sh/apollo/apollo-portal

WORKDIR /opt/sh/apollo

CMD ["/usr/bin/dumb-init", "bash", "-vx", "/opt/sh/apollo/scripts/start.sh"]
