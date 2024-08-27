## Developer Guide:


### Set up wazuh-indexer

We recommend to install the wazuh-indexer snap, so that wazuh-dashboard
has an wazuh-indexer instance to connect to.

Instructions to get the wazuh-indexer snap working are detailed on the Wazuh Indexer Snap
[Github repository](https://github.com/canonical/wazuh-indexer-snap)


### Installation:
Steps to package and install `wazuh-dashboard` snap locally (having checked out this repo):

```
cd wazuh-dashboard-snap

# build and package the snap
snapcraft pack --debug

# install the snap
sudo snap install ./wazuh-dashboard_2.12.0_amd64.snap --dangerous --jailmode
```


## Start wazuh-dashboard

As explained in the 
[README: Starting Wazuh Dashboard](https://github.com/canonical/wazuh-dashboard-snap?tab=readme-ov-file#starting-wazuh-dashboard)

### Test your installation:

As explained in the
[README: Testing the Wazuh Dashboard setup](https://github.com/canonical/wazuh-dashboard-snap?tab=readme-ov-file#testing-the-wazuh-dashboard-setup)

### For live debugging:
1. The journal logs:
   ```
   sudo sysctl -w kernel.printk_ratelimit=0 ; journalctl --follow | grep wazuh-dashboard
   ```
2. Snap logs:
   ```
   snappy-debug scanlog --only-snap=wazuh-dashboard
   ```
