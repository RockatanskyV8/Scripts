#!/bin/bash
source config.sh

if [[ $osname == "arch-linux" ]]; then
sudo wget http://someonewhocares.org/hosts/hosts -O /etc/hosts
sudo bash -c "cat >> /etc/hosts <<- EOM
127.0.0.1   $hostname
EOM"
fi

if [[ $osname == "debian-9" ]]; then
sudo wget http://someonewhocares.org/hosts/hosts -O /etc/hosts
sudo bash -c "cat >> /etc/hosts <<- EOM
127.0.0.1   $hostname
EOM"
fi

if [[ $osname == "debian-sid" ]]; then
sudo wget http://someonewhocares.org/hosts/hosts -O /etc/hosts
sudo bash -c "cat >> /etc/hosts <<- EOM
127.0.0.1   $hostname
EOM"
fi

if [[ $osname == "fedora-29" ]]; then
sudo wget http://someonewhocares.org/hosts/hosts -O /etc/hosts
sudo bash -c "cat >> /etc/hosts <<- EOM
127.0.0.1   $hostname
EOM"
fi

if [[ $osname == "ubuntu-18.04" ]]; then
sudo wget http://someonewhocares.org/hosts/hosts -O /etc/hosts
sudo bash -c "cat >> /etc/hosts <<- EOM
127.0.0.1   $hostname
EOM"
fi

if [[ $osname == "windows-10" ]]; then
bitsadmin /transfer download /download /priority normal http://someonewhocares.org/hosts/hosts C:\Windows\System32\drivers\etc\hosts
attrib +r C:\Windows\System32\drivers\etc\hosts
fi
