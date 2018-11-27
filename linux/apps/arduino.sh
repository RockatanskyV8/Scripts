#!/bin/bash
source config.sh

if [[ $osname == "arch-linux" ]]; then
sudo pakku -S arduino --noconfirm
sudo pakku -S arduino-avr-core --noconfirm
sudo usermod -aG uucp
sudo usermod -aG lock
fi

if [[ $osname == "debian-9" ]]; then
sudo apt install arduino -y
sudo adduser $username dialout
fi

if [[ $osname == "debian-sid" ]]; then
sudo apt install arduino -y
sudo adduser $username dialout
fi

if [[ $osname == "fedora-29" ]]; then
$missing
fi

if [[ $osname == "ubuntu-18.04" ]]; then
sudo apt install arduino -y
sudo adduser $username dialout
fi
