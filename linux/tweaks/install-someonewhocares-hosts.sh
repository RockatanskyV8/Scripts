#!/bin/bash
source config.sh

link_someonewhocares_hosts="http://someonewhocares.org/hosts/hosts"

if [[ $osname == $archlinux ]]; then
    sudo wget $link_someonewhocares_hosts -O /etc/hosts
fi

if [[ $osname == $debianstable ]]; then
    sudo wget $link_someonewhocares_hosts -O /etc/hosts
fi

if [[ $osname == $debiansid ]]; then
    sudo wget $link_someonewhocares_hosts -O /etc/hosts
fi

if [[ $osname == $fedora ]]; then
    sudo wget $link_someonewhocares_hosts -O /etc/hosts
fi

if [[ $osname == $ubuntults ]]; then
    sudo wget $link_someonewhocares_hosts -O /etc/hosts
fi
