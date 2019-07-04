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
sudo rm /usr/share/applications/java-1.8.0-openjdk-1.8.0.212.b04-0.fc30.x86_64-policytool.desktop
fi

if [[ $osname == $ubuntults ]]; then
sudo apt install libreoffice libreoffice-kde -y
fi
