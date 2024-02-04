# OpenSearch Dasboards Snap

[//]: # (<h1 align="center">)
[//]: # (  <a href="https://opensearch.org/">)
[//]: # (    <img src="https://opensearch.org/assets/brand/PNG/Logo/opensearch_logo_default.png" alt="OpenSearch" />)
[//]: # (  </a>)
[//]: # (  <br />)
[//]: # (</h1>)

This is the snap for [OpenSearch Dashboards](https://opensearch.org/docs/latest/dashboards/), a community-driven, Apache 2.0-licensed 
user interface that lets you visualize your OpenSearch data and run and scale your OpenSearch clusters.



### Installation:
[![Get it from the Snap Store](https://snapcraft.io/static/images/badges/en/snap-store-black.svg)](https://snapcraft.io/opensearch-dashboards)

or:
```
sudo snap install opensearch-dashboards --channel=2/candidate
```

### Starting OpenSearch Dashboards:

#### Starting OpenSearch:
```
sudo snap start opensearch-dashboards
```

### Testing the OpenSearch setup:

Opensearch Dashboards by default are started up at http://localhost:5601, with default credentials
such as user `kibanaserver`, password `kibanaserver`.

If you have an Opensearch instance running with default settings (https://localhost:9200), the Dashboard
should be able to automatically connect.

Any other potential connection (or other configuration information) should go to

```
 /snap/opensearch-dashboards/current/etc/opensearch-dashboards/opensearch_dashboards.yml
```

## License
The Opensearch Snap is free software, distributed under the Apache
Software License, version 2.0. See
[LICENSE](https://github.com/canonical/opensearch-snap/blob/main/licenses/LICENSE-snap)
for more information.
