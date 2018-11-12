#!/bin/bash
source config.sh

if [[ $osname == "arch-linux" ]]; then
sudo pakku -S samba
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

if [[ $osname == "debian-9" ]]; then
sudo apt install samba -y
sudo systemctl enable smbd
sudo smbpasswd -a $username
sudo bash -c "cat >> /etc/samba/smb.conf <<- EOM
$samba_lines
EOM"
sudo ufw allow samba
sudo ufw reload
fi

if [[ $osname == "debian-sid" ]]; then
sudo apt install samba -y
sudo systemctl enable smbd
sudo smbpasswd -a $username
sudo bash -c "cat >> /etc/samba/smb.conf <<- EOM
$samba_lines
EOM"
sudo ufw allow samba
sudo ufw reload
fi

if [[ $osname == "fedora-29" ]]; then
sudo dnf install samba -y
sudo systemctl enable smb.service nmb.service
sudo smbpasswd -a $username
sudo bash -c "cat >> /etc/samba/smb.conf <<- EOM
$samba_lines
EOM"
sudo firewall-cmd --add-service=samba --permanent
sudo firewall-cmd --reload
fi

if [[ $osname == "ubuntu-18.04" ]]; then
sudo apt install samba -y
sudo systemctl enable smbd
sudo smbpasswd -a $username
sudo bash -c "cat >> /etc/samba/smb.conf <<- EOM
$samba_lines
EOM"
sudo ufw allow samba
sudo ufw reload
fi

if [[ $osname == "windows-10" ]]; then
$incompatible
fi
