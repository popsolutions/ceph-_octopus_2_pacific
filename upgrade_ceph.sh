#/bin/bash

#Restart the Monitor Daemon
systemctl restart ceph-mon.target

#Restart the Manager Daemons on all Nodes
systemctl restart ceph-mgr.target

#Restart the OSD Daemon on all Nodes
#Restart all OSDs. Only restart OSDs on one node at a time to avoid loss of data redundancy. To restart all OSDs on a node, run the following comman
systemctl restart ceph-osd.target

