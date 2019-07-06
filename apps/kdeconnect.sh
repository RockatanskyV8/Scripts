#!/bin/bash
source config.sh

if [[ $osname == $archlinux ]]; then
    sudo pacman -S kdeconnect --noconfirm
    sudo bash -c "cat strings/ufw-kdeconnect > /etc/ufw/applications.d/kdeconnect"
    sudo ufw allow kdeconnect
    sudo ufw reload
fi

if [[ $osname == $debian ]]; then
    sudo apt install kdeconnect -y
    sudo bash -c "cat strings/ufw-kdeconnect > /etc/ufw/applications.d/kdeconnect"
    sudo ufw allow kdeconnect
    sudo ufw reload
fi

if [[ $osname == $fedora ]]; then
    sudo dnf install kde-connect -y
fi

if [[ $osname == $ubuntu ]]; then
    sudo apt install kdeconnect -y
    sudo bash -c "cat strings/ufw-kdeconnect > /etc/ufw/applications.d/kdeconnect"
    sudo ufw allow kdeconnect
    sudo ufw reload
fi
