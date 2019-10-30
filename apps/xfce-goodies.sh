#!/bin/bash
source config.sh

if [[ $osname == $archlinux ]]; then
    sudo pacman -S xfce4-goodies --noconfirm
fi

if [[ $osname == $debian ]]; then
    $missing
fi

if [[ $osname == $fedora ]]; then
    sudo dnf install mousepad -y
    sudo dnf install xfce4-whiskermenu-plugin -y
    sudo dnf install file-roller -y
fi

if [[ $osname == $ubuntu ]]; then
    $missing
fi 
