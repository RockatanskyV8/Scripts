#!/bin/bash
source config.sh

if [[ $osname == $archlinux ]]; then
sudo pacman -S openssh --noconfirm
sudo systemctl enable sshd
sudo ufw allow ssh
sudo ufw reload
fi

if [[ $osname == $debian9 ]]; then
$missing
fi

if [[ $osname == $debiansid ]]; then
$missing
fi

if [[ $osname == $fedora29 ]]; then
$missing
fi

if [[ $osname == $ubuntu1804 ]]; then
$missing
fi
