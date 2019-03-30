#!/bin/bash
source config.sh

if [[ $osname == $archlinux ]]; then
sudo wget $link_someonewhocares_hosts -O /etc/hosts
sudo bash -c "cat >> /etc/hosts <<- EOM
127.0.0.1   $hostname
EOM"
fi

if [[ $osname == $debian9 ]]; then
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

if [[ $osname == $fedora29 ]]; then
sudo wget $link_someonewhocares_hosts -O /etc/hosts
sudo bash -c "cat >> /etc/hosts <<- EOM
127.0.0.1   $hostname
EOM"
fi

if [[ $osname == $ubuntu1804 ]]; then
sudo wget $link_someonewhocares_hosts -O /etc/hosts
sudo bash -c "cat >> /etc/hosts <<- EOM
127.0.0.1   $hostname
EOM"
fi
