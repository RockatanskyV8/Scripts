#!/bin/bash
source config.sh

if [[ $osname == $archlinux ]]; then
$missing
fi

if [[ $osname == $debian9 ]]; then
sudo apt install gnome-core -y
sudo apt purge mutt tracker -y
fi

if [[ $osname == $debiansid ]]; then
sudo apt install gnome-core -y
sudo apt purge mutt tracker -y
fi

if [[ $osname == $fedora29 ]]; then
$missing
fi

if [[ $osname == $ubuntu1804 ]]; then
$missing
fi
