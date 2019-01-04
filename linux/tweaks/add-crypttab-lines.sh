#!/bin/bash
source config.sh

if [[ $osname == "arch-linux" ]]; then
sudo bash -c "cat >> /etc/crypttab <<- EOM
$crypttab_lines
EOM"
fi

if [[ $osname == "debian-9" ]]; then
sudo bash -c "cat >> /etc/crypttab <<- EOM
$crypttab_lines
EOM"
fi

if [[ $osname == "debian-sid" ]]; then
sudo bash -c "cat >> /etc/crypttab <<- EOM
$crypttab_lines
EOM"
fi

if [[ $osname == "fedora-29" ]]; then
sudo bash -c "cat >> /etc/crypttab <<- EOM
$crypttab_lines
EOM"
fi

if [[ $osname == "ubuntu-18.04" ]]; then
sudo bash -c "cat >> /etc/crypttab <<- EOM
$crypttab_lines
EOM"
fi
