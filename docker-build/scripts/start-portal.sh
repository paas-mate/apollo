#!/bin/bash

LOG_FILE="$APOLLO_LOG_DIR/portal.out"
if ! [ -z ${RDS_TYPE} ]; then
    OPTS="$OPTS -Dspring.profiles.group.github=${RDS_TYPE}"
fi
if [ -z ${PORTAL_DATASOURCE_URL} ] && [ -z ${PORTAL_DATASOURCE_USERNAME} ] ; then
  OPTS="$OPTS -Dapollo_profile=${APOLLO_PROFILE}"
  OPTS="$OPTS -Dspring.datasource.url=${DATASOURCE_URL}"
  OPTS="$OPTS -Dspring.datasource.username=${DATASOURCE_USERNAME}"
  OPTS="$OPTS -Dspring.datasource.password=${DATASOURCE_PASSWORD}"
else
  OPTS="$OPTS -Dapollo_profile=${APOLLO_PROFILE}"
  OPTS="$OPTS -Dspring.datasource.url=${PORTAL_DATASOURCE_URL}"
  OPTS="$OPTS -Dspring.datasource.username=${PORTAL_DATASOURCE_USERNAME}"
  OPTS="$OPTS -Dspring.datasource.password=${PORTAL_DATASOURCE_PASSWORD}"
fi
if ! [ -z ${DATASOURCE_PLATFORM} ]; then
    OPTS="$OPTS -Dspring.jpa.database-platform=${DATASOURCE_PLATFORM}"
fi
OPTS="$OPTS -Ddev_meta=http://localhost:8080/"
nohup java $OPTS -jar ${PORTAL_SERVICE_DIR}/apollo-portal.jar 2>&1 >$LOG_FILE &
