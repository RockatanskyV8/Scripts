#!/bin/bash
source config.sh

if [[ $osname == $archlinux ]]; then
    sudo bash -c "cat strings/config-flat-volumes >> /etc/pulse/daemon.conf"
fi

if [[ $osname == $debianstable ]]; then
    sudo bash -c "cat strings/config-flat-volumes >> /etc/pulse/daemon.conf"
fi

if [[ $osname == $debiansid ]]; then
    sudo bash -c "cat strings/config-flat-volumes >> /etc/pulse/daemon.conf"
fi

if [[ $osname == $fedora ]]; then
    sudo bash -c "cat strings/config-flat-volumes >> /etc/pulse/daemon.conf"
fi

if [[ $osname == $ubuntults ]]; then
    $missing
fi
