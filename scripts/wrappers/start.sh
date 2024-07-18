#!/usr/bin/env bash

set -eu

function start_opensearch_dashboards () {
    # start
    exec "${SNAP}"/usr/bin/setpriv \
        --clear-groups \
        --reuid snap_daemon \
        --regid snap_daemon -- \
        ${OPENSEARCH_DASHBOARDS_BIN}/opensearch-dashboards \
        -c ${OPENSEARCH_DASHBOARDS_PATH_CONF}/opensearch_dashboards.yml \
        -l ${OPENSEARCH_DASHBOARDS_VARLOG}/opensearch_dashboards.log

}

start_opensearch_dashboards
