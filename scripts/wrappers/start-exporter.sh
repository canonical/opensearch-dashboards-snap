#!/usr/bin/env bash

set -eu

source "${OPS_ROOT}"/helpers/get-conf.sh

function fetch_exporter_args () {
    DASHBOARDS_HOST=$( get_yaml_prop "${OPENSEARCH_DASHBOARDS_PATH_CONF}/opensearch_dashboards.yml" "server.host" "localhost" )
    DASHBOARDS_PORT=$( get_yaml_prop "${OPENSEARCH_DASHBOARDS_PATH_CONF}/opensearch_dashboards.yml" "server.port" "5601" )
    DASHBOARDS_USERNAME=$( get_yaml_prop "${OPENSEARCH_DASHBOARDS_PATH_CONF}/opensearch_dashboards.yml" "opensearch.username" "kibanaserver" )
    DASHBOARDS_PASSWORD=$( get_yaml_prop "${OPENSEARCH_DASHBOARDS_PATH_CONF}/opensearch_dashboards.yml" "opensearch.password" "kibanaserver" )
}

function start_kibana_exporter () {
    exec "${SNAP}"/usr/bin/setpriv \
        --clear-groups \
        --reuid snap_daemon \
        --regid snap_daemon -- \
        ${OPENSEARCH_DASHBOARDS_DEPS_BIN}/kibana-prometheus-exporter \
        -kibana.uri http://${DASHBOARDS_HOST}:${DASHBOARDS_PORT} \
        -kibana.username ${DASHBOARDS_USERNAME} -kibana.password ${DASHBOARDS_PASSWORD} -kibana.skip-tls true
}


fetch_exporter_args
start_kibana_exporter
