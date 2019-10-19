#!/bin/bash
source config.sh

if [[ $osname == $archlinux ]]; then
    sudo bash -c "cat strings/config-flat-volumes >> /etc/pulse/daemon.conf"
fi

if [[ $osname == $debian ]]; then
    sudo bash -c "cat strings/config-flat-volumes >> /etc/pulse/daemon.conf"
fi

if [[ $osname == $fedora ]]; then
    sudo bash -c "cat strings/config-flat-volumes >> /etc/pulse/daemon.conf"
fi

if [[ $osname == $ubuntu ]]; then
    $missing
fi
