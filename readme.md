#Restarts and updates Ceph Monitor & Managers
systemctl restart ceph-mon.target

ceph mon dump | grep min_mon_release

#Restarts OSD on each node
systemctl restart ceph-osd.target
