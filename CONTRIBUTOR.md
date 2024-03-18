## Developer Guide:


### Set up opensearch

We recommend to install the opensearch snap, so that opensearch-dashboards
has an opensearch instance to connect to.

Instructions to get the opensearch snap working are detailed on the OpenSearch Snap
[Github repository](https://github.com/canonical/opensearch-snap)


### Installation:
Steps to package and install `opensearch-dashboards` snap locally (having checked out this repo):

```
cd opensearch-dashboards-snap

# build and package the snap
snapcraft pack --debug

# install the snap
sudo snap install ./opensearch-dashboards_2.11.1_amd64.snap --dangerous --jailmode
```


## Start opensearch-dashboards

As explained in the 
[README: Starting OpenSearch Dashboards](https://github.com/canonical/opensearch-dashboards-snap?tab=readme-ov-file#starting-opensearch-dashboards)

### Test your installation:

As explained in the
[README: Testing the OpenSearch Dashboards setup](https://github.com/canonical/opensearch-dashboards-snap?tab=readme-ov-file#testing-the-opensearch-dashboards-setup)

### For live debugging:
1. The journal logs:
   ```
   sudo sysctl -w kernel.printk_ratelimit=0 ; journalctl --follow | grep opensearch-dashboards
   ```
2. Snap logs:
   ```
   snappy-debug scanlog --only-snap=opensearch-dashboards
   ```
