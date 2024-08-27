# Wazuh Dasboard Snap
[![Release](https://github.com/canonical/wazuh-dashboard-snap/actions/workflows/release.yaml/badge.svg)](https://github.com/canonical/wazuh-dashboard-snap/actions/workflows/release.yaml)
[![Tests](https://github.com/canonical/wazuh-dashboard-snap/actions/workflows/ci.yaml/badge.svg)](https://github.com/canonical/wazuh-dashboard-snap/actions/workflows/ci.yaml)


[//]: # (<h1 align="center">)
[//]: # (  <a href="https://wazuh.com/">)
[//]: # (    <img src="https://wazuh.com/uploads/2022/05/WAZUH.png" alt="Wazuh" />)
[//]: # (  </a>)
[//]: # (  <br />)
[//]: # (</h1>)

This is the snap package for [Wazuh Dashboard](https://documentation.wazuh.com/current/getting-started/components/wazuh-dashboard.html/), a
community-driven, Apache 2.0-licensed user interface that lets you visualize your Wazuh data, together
with running and scaling your Wazuh clusters.



### Installation:
[![Get it from the Snap Store](https://snapcraft.io/static/images/badges/en/snap-store-black.svg)](https://snapcraft.io/wazuh-dashboard)

or:
```
sudo snap install wazuh-dashboard --channel=2/edge
```

### Starting Wazuh Dashboard:

#### Parameters:

The following parameters are configurable for the `wazuh-dashboard` daemon:

 - `host` -- hostname or IP where the service is to be exposed (default: `localhost`)
 - `port` -- port where the service is to be exposed (default: `5601`)
 - `opensearch` -- Wazuh Indexer instance URI to connect to (default: `https://localhost:9200`)

They can be set using the `snapctl` command, before starting the application. Such as:
```
sudo snap set wazuh-dashboard port=1234
```

#### Starting up the service:

Either if using the defautls (or when all parameters are set), `wazuh-dashboard` can be started
by executing the following command
```
sudo snap start wazuh-dashboard.daemon
```

### Testing the Wazuh Dashboards setup:

Wazuh Dashboard by default is started up at http://localhost:5601, with default credentials
(user: `kibanaserver`, password: `kibanaserver`).

If you have an Wazuh instance running with default settings (https://localhost:9200), the Dashboard
should be able to automatically connect.

Any other potential connection (or other configuration information) should go to

```
/snap/wazuh-dashboard/current/etc/opensearch/opensearch_dashboards.yml
```

## License
The Wazuh Dashboard Snap is free software, distributed under the Apache
Software License, version 2.0. See
[LICENSE](https://github.com/canonical/wazuh-dashboard-snap/blob/main/licenses/LICENSE-snap)
for more information.
