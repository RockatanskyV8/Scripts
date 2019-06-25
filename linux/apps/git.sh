#!/bin/bash
source config.sh

if [[ $osname == $archlinux ]]; then
sudo pacman -S git --noconfirm
fi

if [[ $osname == $debianstable ]]; then
sudo apt install git -y
fi

if [[ $osname == $debiansid ]]; then
sudo apt install git -y
fi

if [[ $osname == $fedora ]]; then
sudo dnf install git -y
fi

if [[ $osname == $ubuntults ]]; then
sudo apt install git -y
fi
