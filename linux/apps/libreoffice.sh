#!/bin/bash
source config.sh

if [[ $osname == $archlinux ]]; then
sudo pacman -S libreoffice --noconfirm
fi

if [[ $osname == $debian9 ]]; then
sudo apt install libreoffice libreoffice-kde -y
fi

if [[ $osname == $debiansid ]]; then
sudo apt install libreoffice libreoffice-kde -y
fi

if [[ $osname == $fedora29 ]]; then
sudo dnf install libreoffice -y
fi

if [[ $osname == $ubuntu1804 ]]; then
sudo apt install libreoffice libreoffice-kde -y
fi
