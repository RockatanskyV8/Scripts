#!/bin/bash
source config.sh

if [[ $osname == $archlinux ]]; then
    sudo pacman -S openssh --noconfirm
    sudo systemctl enable sshd
    sudo ufw allow ssh
    sudo ufw reload
fi

if [[ $osname == $debian ]]; then
    sudo apt install ssh -y
    sudo ufw allow ssh
    sudo ufw reload
fi

if [[ $osname == $fedora ]]; then
    sudo dnf install openssh -y
    sudo firewall-cmd --add-service=ssh --permanent
    sudo firewall-cmd --reload
fi

if [[ $osname == $ubuntu ]]; then
    $missing
fi
