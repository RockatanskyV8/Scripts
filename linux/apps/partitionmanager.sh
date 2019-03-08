#!/bin/bash
source config.sh

if [[ $osname == "arch-linux" ]]; then
sudo pacman -S partitionmanager --noconfirm
fi

if [[ $osname == "debian-9" ]]; then
sudo apt install partitionmanager -y
fi

if [[ $osname == "debian-sid" ]]; then
sudo apt install partitionmanager -y
fi

if [[ $osname == "fedora-29" ]]; then
sudo dnf install kde-partitionmanager -y
fi

if [[ $osname == "ubuntu-18.04" ]]; then
$missing
fi
