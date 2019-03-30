#!/bin/bash
source config.sh

if [[ $osname == $archlinux ]]; then
sudo pacman -S partitionmanager --noconfirm
fi

if [[ $osname == $debian9 ]]; then
sudo apt install partitionmanager -y
fi

if [[ $osname == $debiansid ]]; then
sudo apt install partitionmanager -y
fi

if [[ $osname == $fedora29 ]]; then
sudo dnf install kde-partitionmanager -y
fi

if [[ $osname == $ubuntu1804 ]]; then
$missing
fi
