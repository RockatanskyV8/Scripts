#!/bin/bash
source config.sh

if [[ $osname == "arch-linux" ]]; then
sudo bash -c "cat >> /etc/pulse/daemon.conf <<- EOM
flat-volumes = no
EOM"
fi

if [[ $osname == "debian-9" ]]; then
sudo bash -c "cat >> /etc/pulse/daemon.conf <<- EOM
flat-volumes = no
EOM"
fi

if [[ $osname == "debian-sid" ]]; then
sudo bash -c "cat >> /etc/pulse/daemon.conf <<- EOM
flat-volumes = no
EOM"
fi

if [[ $osname == "fedora-29" ]]; then
sudo bash -c "cat >> /etc/pulse/daemon.conf <<- EOM
flat-volumes = no
EOM"
fi

if [[ $osname == "ubuntu-18.04" ]]; then
$missing
fi

if [[ $osname == "windows-10" ]]; then
$incompatible
fi
