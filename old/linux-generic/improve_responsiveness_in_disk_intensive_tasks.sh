#!/bin/bash
# this will allow some disk cache on the memory
# notice that it may help the system responsiveness but decreases disk write performance, as thigs will first fill the ram cache and only then be written in the disk

size="250000000" # 250MB

sudo bash -c "cat >> /etc/sysctl.conf <<- EOM
vm.dirty_bytes = 250000000
EOM"
sudo sysctl -p
fi