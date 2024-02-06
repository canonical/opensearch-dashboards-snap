#!/usr/bin/env bash

set -eu


usage() {
cat << EOF
usage: start.sh --init-security yes --admin-password ...
To be ran / setup once per cluster.
--host (Optional)               Host and port specification (default: localhost:5601)
--opensearch <uri1>,<uri2>      Opensearch instance URIs
--help                          Shows help menu
EOF
}


# Args
# Concatenation of what can be configured by the server.host, server.port configuration parameters
host=""
# The same as the opensearch.hosts configuration parameter
opensearch=""


# Args handling
function parse_args () {
    host="$(snapctl get host)"
    opensearch="$(snapctl get opensearch)"
}

function set_defaults () {
    if [ -z "${host}" ]; then
        host="localhost:5601"
    fi
    if [ -z "${opensearch}" ]; then
        opensearch="https://localhost:9200"
    fi
}

function start_opensearch_dashboards () {
    # start
    "${SNAP}"/usr/bin/setpriv \
        --clear-groups \
        --reuid snap_daemon \
        --regid snap_daemon -- \
        ${OPENSEARCH_DASHBOARDS_BIN}/opensearch-dashboards -c ${OPENSEARCH_DASHBOARDS_CONFIG}/opensearch_dashboards.yml
        # -l ${OPENSEARCH_DASHBOARDS_VARLOG} \
        # -h ${host}
        # -e ${opensearch}
}


parse_args
set_defaults

start_opensearch_dashboards
