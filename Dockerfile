FROM shoothzj/compile:jdk17-mvn AS compiler

RUN git clone --depth 1 --branch=h2-init-sql https://github.com/shoothzj/apollo.git && \
    cd apollo && \
    mvn -B clean package -DskipTests=true && \
    mkdir /opt/apollo

FROM shoothzj/base:jdk17

COPY --from=compiler /apollo/apollo-configservice/target/apollo-configservice-2.2.0-SNAPSHOT.jar /opt/apollo/config/apollo-configservice.jar
COPY --from=compiler /apollo/apollo-configservice/target/classes/application.properties /opt/apollo/config/application.properties
COPY --from=compiler /apollo/apollo-adminservice/target/apollo-adminservice-2.2.0-SNAPSHOT.jar /opt/apollo/admin/apollo-adminservice.jar
COPY --from=compiler /apollo/apollo-adminservice/target/classes/application.properties /opt/apollo/admin/application.properties
COPY --from=compiler /apollo/apollo-portal/target/apollo-portal-2.2.0-SNAPSHOT.jar /opt/apollo/portal/apollo-portal.jar
COPY --from=compiler /apollo/apollo-portal/target/classes/application.properties /opt/apollo/portal/application.properties

COPY docker-build /opt/apollo/mate

ENV APOLLO_HOME /opt/apollo
ENV APOLLO_LOG_DIR /opt/apollo/logs
ENV ADMIN_SERVICE_DIR /opt/apollo/admin
ENV CONFIG_SERVICE_DIR /opt/apollo/config
ENV PORTAL_SERVICE_DIR /opt/apollo/portal

WORKDIR /opt/apollo

CMD ["/usr/bin/dumb-init", "bash", "-vx", "/opt/apollo/mate/scripts/start.sh"]
