#!/bin/bash
source config.sh

if [[ $osname == $archlinux ]]; then
    sudo pacman -S syncthing --noconfirm
    sudo systemctl enable syncthing@$username.service
    sudo ufw allow syncthing
    sudo ufw reload
    fi

    if [[ $osname == $debianstable ]]; then
    sudo apt install syncthing -y
    sudo systemctl enable syncthing@$username.service
    sudo bash -c "cat strings/ufw-syncthing > /etc/ufw/applications.d/syncthing-server"
    sudo ufw allow syncthing
    sudo ufw reload
fi

if [[ $osname == $debiansid ]]; then
    sudo apt install syncthing -y
    sudo systemctl enable syncthing@$username.service
    sudo ufw allow syncthing
    sudo ufw reload
fi

if [[ $osname == $fedora ]]; then
    sudo dnf install syncthing -y
    sudo systemctl enable syncthing@$username.service
    sudo firewall-cmd --add-service=syncthing --permanent
    sudo firewall-cmd --reload
fi

if [[ $osname == $ubuntults ]]; then
    sudo apt install syncthing -y
    sudo systemctl enable syncthing@$username.service
    sudo bash -c "cat strings/ufw-syncthing > /etc/ufw/applications.d/syncthing-server"
    sudo ufw allow syncthing
    sudo ufw reload
fi
