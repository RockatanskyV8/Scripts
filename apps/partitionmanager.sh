#!/bin/bash
source config.sh

if [[ $osname == $archlinux ]]; then
    sudo pacman -S partitionmanager --noconfirm
fi

if [[ $osname == $debian ]]; then
    sudo apt install partitionmanager -y
fi

if [[ $osname == $fedora ]]; then
    sudo dnf install kde-partitionmanager -y
fi

if [[ $osname == $ubuntu ]]; then
    $missing
fi
