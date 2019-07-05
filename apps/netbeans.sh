#!/bin/bash
source config.sh

if [[ $osname == $archlinux ]]; then
    $incompatible
fi

if [[ $osname == $debianstable ]]; then
    sudo apt install netbeans -y
    sudo bash -c "cat strings/config-netbeans >> /usr/share/netbeans/8.1/etc/netbeans.conf"
fi

if [[ $osname == $debiansid ]]; then
    $incompatible
fi

if [[ $osname == $fedora ]]; then
    $incompatible
fi

if [[ $osname == $ubuntults ]]; then
    $incompatible
fi
