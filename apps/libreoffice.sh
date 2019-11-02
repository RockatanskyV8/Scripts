#!/bin/bash
source config.sh

if [[ $osname == $archlinux ]]; then
    sudo pacman -S libreoffice --noconfirm
fi

if [[ $osname == $debian ]]; then
    sudo apt install libreoffice libreoffice-kde -y
fi

if [[ $osname == $fedora ]]; then
    sudo dnf install libreoffice -y
    sudo rm /usr/share/applications/java-*-policytool.desktop
fi

if [[ $osname == $ubuntu ]]; then
    sudo apt install libreoffice libreoffice-kde -y
fi
