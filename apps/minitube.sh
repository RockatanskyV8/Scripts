#!/bin/bash
source config.sh

if [[ $osname == "arch-linux" ]]; then
sudo pakku -S minitube-aur
fi

if [[ $osname == "debian-9" ]]; then
$missing
fi

if [[ $osname == "debian-sid" ]]; then
sudo apt install minitube -y
fi

if [[ $osname == "fedora-29" ]]; then
$incompatible
fi

if [[ $osname == "ubuntu-18.04" ]]; then
$missing
fi

if [[ $osname == "windows-10" ]]; then
$missing
fi
