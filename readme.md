systemctl restart ceph-mon.target

ceph mon dump | grep min_mon_release
