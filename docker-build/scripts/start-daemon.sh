#!/bin/bash

LOG_DIR="/opt/apollo/admin/log"
mkdir -p ${LOG_DIR}

if ! [ -z ${APOLLO_PROFILE} ] && ! [ -z ${DATASOURCE_URL} ] && ! [ -z ${DATASOURCE_USERNAME} ] && ! [ -z ${DATASOURCE_PASSWORD} ] && ! [ -z ${DATASOURCE_PLATEFORM} ]; then
    echo "param not null."
    exit 1;
fi
bash -x start-configservice.sh
sleep(10_000)
bash -x start-adminservice.sh
bash -x start-portalservice.sh