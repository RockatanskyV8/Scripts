#!/bin/bash
source config.sh

if [[ $osname == $archlinux ]]; then
sudo pacman -S vlc --noconfirm
fi

if [[ $osname == $debianstable ]]; then
sudo apt install vlc -y
fi

if [[ $osname == $debiansid ]]; then
sudo apt install vlc -y
fi

if [[ $osname == $fedora ]]; then
sudo dnf install vlc -y
fi

if [[ $osname == $ubuntults ]]; then
sudo apt install vlc -y
fi
