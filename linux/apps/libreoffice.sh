#!/bin/bash
source config.sh

if [[ $osname == $archlinux ]]; then
sudo pacman -S libreoffice --noconfirm
fi

if [[ $osname == $debianstable ]]; then
sudo apt install libreoffice libreoffice-kde -y
fi

if [[ $osname == $debiansid ]]; then
sudo apt install libreoffice libreoffice-kde -y
fi

if [[ $osname == $fedora ]]; then
sudo dnf install libreoffice -y
fi

if [[ $osname == $ubuntults ]]; then
sudo apt install libreoffice libreoffice-kde -y
fi
