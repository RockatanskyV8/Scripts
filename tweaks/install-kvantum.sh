#!/bin/bash
source config.sh

if [[ $osname == $archlinux ]]; then
    sudo pacman -S kvantum-qt5 --noconfirm
    sudo pacman -S qt5ct --noconfirm
    sudo bash -c "cat strings/config-kvantum >> /etc/environment"
fi

if [[ $osname == $debian ]]; then
    sudo apt install qt5-style-kvantum -y
    sudo apt install qt5ct -y
    sudo bash -c "cat strings/config-kvantum >> /etc/environment"
fi

if [[ $osname == $fedora ]]; then
    sudo dnf install kvantum -y
    sudo dnf install qt5ct -y
    sudo bash -c "cat strings/config-kvantum >> /etc/environment"
fi

if [[ $osname == $ubuntu ]]; then
    $missing
fi
