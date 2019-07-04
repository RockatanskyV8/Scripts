#!/bin/bash
source config.sh

if [[ $osname == $archlinux ]]; then
    sudo wget $link_someonewhocares_hosts -O /etc/hosts
    sudo bash -c "cat >> /etc/hosts <<- EOM
    127.0.0.1   $hostname
    EOM"
fi

if [[ $osname == $debianstable ]]; then
    sudo wget $link_someonewhocares_hosts -O /etc/hosts
    sudo bash -c "cat >> /etc/hosts <<- EOM
    127.0.0.1   $hostname
    EOM"
fi

if [[ $osname == $debiansid ]]; then
    sudo wget $link_someonewhocares_hosts -O /etc/hosts
    sudo bash -c "cat >> /etc/hosts <<- EOM
    127.0.0.1   $hostname
    EOM"
fi

if [[ $osname == $fedora ]]; then
    sudo wget $link_someonewhocares_hosts -O /etc/hosts
    sudo bash -c "cat >> /etc/hosts <<- EOM
    127.0.0.1   $hostname
    EOM"
fi

if [[ $osname == $ubuntults ]]; then
    sudo wget $link_someonewhocares_hosts -O /etc/hosts
    sudo bash -c "cat >> /etc/hosts <<- EOM
    127.0.0.1   $hostname
    EOM"
fi
