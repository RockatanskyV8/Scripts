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
    sudo rm /usr/share/applications/java-1.8.0-openjdk-1.8.0.222.b10-1.fc31.x86_64-policytool.desktop
fi

if [[ $osname == $ubuntu ]]; then
    sudo apt install libreoffice libreoffice-kde -y
fi
