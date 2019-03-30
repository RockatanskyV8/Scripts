#!/bin/bash
source config.sh

if [[ $osname == $archlinux ]]; then
sudo pacman -S samba --noconfirm
sudo systemctl enable smbd nmbd
sudo cp smb.conf /etc/samba
sudo smbpasswd -a $username
sudo bash -c "cat >> /etc/samba/smb.conf <<- EOM
$samba_lines
EOM"
sudo bash -c "cat >> /etc/ufw/applications.d/samba <<- EOM
[samba]
title=samba
description=samba
ports=139,445/tcp|137,138/udp
EOM"
sudo ufw allow samba
sudo ufw reload
fi

if [[ $osname == $debian9 ]]; then
sudo apt install samba -y
sudo systemctl enable smbd
sudo smbpasswd -a $username
sudo bash -c "cat >> /etc/samba/smb.conf <<- EOM
$samba_lines
EOM"
sudo ufw allow samba
sudo ufw reload
fi

if [[ $osname == $debiansid ]]; then
sudo apt install samba -y
sudo systemctl enable smbd
sudo smbpasswd -a $username
sudo bash -c "cat >> /etc/samba/smb.conf <<- EOM
$samba_lines
EOM"
sudo ufw allow samba
sudo ufw reload
fi

if [[ $osname == $fedora29 ]]; then
sudo dnf install samba -y
sudo systemctl enable smb.service nmb.service
sudo smbpasswd -a $username
sudo bash -c "cat >> /etc/samba/smb.conf <<- EOM
$samba_lines
EOM"
sudo firewall-cmd --add-service=samba --permanent
sudo firewall-cmd --reload
fi

if [[ $osname == $ubuntu1804 ]]; then
sudo apt install samba -y
sudo systemctl enable smbd
sudo smbpasswd -a $username
sudo bash -c "cat >> /etc/samba/smb.conf <<- EOM
$samba_lines
EOM"
sudo ufw allow samba
sudo ufw reload
fi
