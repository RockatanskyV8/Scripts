#!/bin/bash
source config.sh

if [[ $osname == $archlinux ]]; then
sudo pacman -S arduino --noconfirm
sudo pacman -S arduino-avr-core --noconfirm
sudo usermod -aG uucp
sudo usermod -aG lock
fi

if [[ $osname == $debianstable ]]; then
sudo apt install arduino -y
sudo adduser $username dialout
fi

if [[ $osname == $debiansid ]]; then
sudo apt install arduino -y
sudo adduser $username dialout
fi

if [[ $osname == $fedora ]]; then
sudo dnf install arduino -y
sudo adduser $username dialout
fi

if [[ $osname == $ubuntults ]]; then
sudo apt install arduino -y
sudo adduser $username dialout
fi
