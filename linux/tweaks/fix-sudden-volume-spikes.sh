#!/bin/bash
source config.sh

if [[ $osname == $archlinux ]]; then
    sudo bash -c "cat >> /etc/pulse/daemon.conf <<- EOM
    flat-volumes = no
    EOM"
fi

if [[ $osname == $debianstable ]]; then
    sudo bash -c "cat >> /etc/pulse/daemon.conf <<- EOM
    flat-volumes = no
    EOM"
fi

if [[ $osname == $debiansid ]]; then
    sudo bash -c "cat >> /etc/pulse/daemon.conf <<- EOM
    flat-volumes = no
    EOM"
fi

if [[ $osname == $fedora ]]; then
    sudo bash -c "cat >> /etc/pulse/daemon.conf <<- EOM
    flat-volumes = no
    EOM"
fi

if [[ $osname == $ubuntults ]]; then
    $missing
fi
