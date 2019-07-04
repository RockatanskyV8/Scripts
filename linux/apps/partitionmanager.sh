#!/bin/bash
source config.sh

if [[ $osname == $archlinux ]]; then
sudo pacman -S partitionmanager --noconfirm
fi

if [[ $osname == $debianstable ]]; then
sudo apt install partitionmanager -y
fi

if [[ $osname == $debiansid ]]; then
sudo apt install partitionmanager -y
fi

if [[ $osname == $fedora ]]; then
sudo dnf install kde-partitionmanager -y
fi

if [[ $osname == $ubuntults ]]; then
$missing
fi
