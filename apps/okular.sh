#!/bin/bash
source config.sh

if [[ $osname == "arch-linux" ]]; then
sudo pakku -S okular
fi

if [[ $osname == "debian-9" ]]; then
sudo apt install okular okular-extra-backends -y
fi

if [[ $osname == "debian-sid" ]]; then
sudo apt install okular okular-extra-backends -y
fi

if [[ $osname == "fedora-29" ]]; then
$missing
fi

if [[ $osname == "ubuntu-18.04" ]]; then
$missing
fi

if [[ $osname == "windows-10" ]]; then
$missing
fi
