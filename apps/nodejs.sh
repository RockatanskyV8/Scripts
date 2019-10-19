#!/bin/bash
source config.sh

if [[ $osname == $archlinux ]]; then
    $missing
fi

if [[ $osname == $debian ]]; then
    sudo apt install nodejs -y
    sudo apt install npm -y
fi

if [[ $osname == $fedora ]]; then
    sudo dnf install nodejs -y
fi

if [[ $osname == $ubuntu ]]; then
    $missing
fi
