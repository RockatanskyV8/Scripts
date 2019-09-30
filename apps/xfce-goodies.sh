#!/bin/bash
source config.sh

if [[ $osname == $archlinux ]]; then
    sudo pacman -S xfce4-goodies --noconfirm
fi

if [[ $osname == $debian ]]; then
    $missing
fi

if [[ $osname == $fedora ]]; then
    $missing
fi

if [[ $osname == $ubuntu ]]; then
    $missing
fi 
