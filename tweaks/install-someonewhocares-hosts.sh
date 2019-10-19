#!/bin/bash
source config.sh

link_someonewhocares_hosts="http://someonewhocares.org/hosts/hosts"

if [[ $osname == $archlinux ]]; then
    sudo wget $link_someonewhocares_hosts -O /etc/hosts
fi

if [[ $osname == $debian ]]; then
    sudo wget $link_someonewhocares_hosts -O /etc/hosts
fi

if [[ $osname == $fedora ]]; then
    sudo wget $link_someonewhocares_hosts -O /etc/hosts
fi

if [[ $osname == $ubuntu ]]; then
    sudo wget $link_someonewhocares_hosts -O /etc/hosts
fi
