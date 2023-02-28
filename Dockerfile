FROM shoothzj/compile:jdk17-mvn AS compiler

RUN git clone --depth 1 https://github.com/apolloconfig/apollo.git && \
    cd apollo && \
    mvn -B clean package -DskipTests=true && \
    mkdir /opt/apollo
