#!/bin/bash
source config.sh

if [[ $osname == $archlinux ]]; then
    $missing
fi

if [[ $osname == $debian ]]; then
    sudo apt install qt5-style-kvantum -y
    sudo apt install qt5ct -y
    sudo bash -c "cat strings/config-kvantum >> /etc/environment"
fi

if [[ $osname == $fedora ]]; then
    $missing
fi

if [[ $osname == $ubuntu ]]; then
    $missing
fi
