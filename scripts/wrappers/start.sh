#!/usr/bin/env bash

set -eu


# Args
# host - The host/IP where where the dashboard is to be exposed
# port - Port where the dashboard is to be exposed
# opensearch - The same as the opensearch.hosts configuration parameter

function parse_args () {
    host="$(snapctl get host)"
    port="$(snapctl get port)"
    opensearch="$(snapctl get opensearch)"
}

function set_defaults () {
    [ -n "${host:-}" ] || host="localhost"
    [ -n "${port:-}" ] || port="5601"
    [ -n "${opensearch:-}" ] || opensearch="https://localhost:9200"
}

function start_opensearch_dashboards () {
    # start
    "${SNAP}"/usr/bin/setpriv \
        --clear-groups \
        --reuid snap_daemon \
        --regid snap_daemon -- \
        ${OPENSEARCH_DASHBOARDS_BIN}/opensearch-dashboards \
        -c ${OPENSEARCH_DASHBOARDS_PATH_CONF}/opensearch_dashboards.yml \
        -l ${OPENSEARCH_DASHBOARDS_VARLOG}/opensearch_dashboards.log \
        -H ${host} \
        -p ${port} \
        -e ${opensearch}
}


parse_args
set_defaults

start_opensearch_dashboards
