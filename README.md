# OpenSearch Dasboards Snap
[![Release](https://github.com/canonical/opensearch-dashboards-snap/actions/workflows/release.yaml/badge.svg)](https://github.com/canonical/opensearch-dashboards-snap/actions/workflows/release.yaml)
[![Tests](https://github.com/canonical/opensearch-dashboards-snap/actions/workflows/ci.yaml/badge.svg)](https://github.com/canonical/opensearch-dashboards-snap/actions/workflows/ci.yaml)


[//]: # (<h1 align="center">)
[//]: # (  <a href="https://opensearch.org/">)
[//]: # (    <img src="https://opensearch.org/assets/brand/PNG/Logo/opensearch_logo_default.png" alt="OpenSearch" />)
[//]: # (  </a>)
[//]: # (  <br />)
[//]: # (</h1>)

This is the snap package for [OpenSearch Dashboards](https://opensearch.org/docs/latest/dashboards/), a
community-driven, Apache 2.0-licensed user interface that lets you visualize your OpenSearch data, together
with running and scaling your OpenSearch clusters.



### Installation:
[![Get it from the Snap Store](https://snapcraft.io/static/images/badges/en/snap-store-black.svg)](https://snapcraft.io/opensearch-dashboards)

or:
```
sudo snap install opensearch-dashboards --channel=2/edge
```

### Starting OpenSearch Dashboards:

#### Parameters:

The following parameters are configurable for the `opensearch-dashboard` daemon:

 - `host` -- hostname or IP where the service is to be exposed (default: `localhost`)
 - `port` -- port where the service is to be exposed (default: `5601`)
 - `opensearch` -- OpenSearch instance URI to connect to (default: `https://localhost:9200`)

They can be set using the `snapctl` command, before starting the application. Such as:
```
sudo snap set opensearch-dashboards port=1234
```

#### Starting up the service:

Either if using the defautls (or when all parameters are set), `opensearch-dashboards` can be started
by executing the following command
```
sudo snap start opensearch-dashboards.daemon
```

### Testing the OpenSearch Dashboards setup:

Opensearch Dashboards by default are started up at http://localhost:5601, with default credentials
(user: `kibanaserver`, password: `kibanaserver`).

If you have an Opensearch instance running with default settings (https://localhost:9200), the Dashboard
should be able to automatically connect.

Any other potential connection (or other configuration information) should go to

```
/snap/opensearch-dashboards/current/etc/opensearch-dashboards/opensearch_dashboards.yml
```

## License
The OpenSearch Dashboards Snap is free software, distributed under the Apache
Software License, version 2.0. See
[LICENSE](https://github.com/canonical/opensearch-dashboards-snap/blob/main/licenses/LICENSE-snap)
for more information.
