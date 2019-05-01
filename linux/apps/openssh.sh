#!/bin/bash
source config.sh

if [[ $osname == $archlinux ]]; then
sudo pacman -S openssh --noconfirm
sudo systemctl enable sshd
sudo ufw allow ssh
sudo ufw reload
fi

if [[ $osname == $debianstable ]]; then
$missing
fi

if [[ $osname == $debiansid ]]; then
$missing
fi

if [[ $osname == $fedora ]]; then
$missing
fi

if [[ $osname == $ubuntults ]]; then
$missing
fi
