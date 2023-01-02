#/bin/bash
#Proxomox updater from Ceph Octopus to Ceph Pacific 16
#based in https://pve.proxmox.com/wiki/Ceph_Octopus_to_Pacific

ceph mon enable-msgr2

ceph mon dump

sed -i 's/octopus/pacific/' /etc/apt/sources.list.d/ceph.list

ceph osd set noout

apt update

apt full-upgrade
