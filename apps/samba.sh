#!/bin/bash
source config.sh

if [[ $osname == $archlinux ]]; then
    sudo pacman -S samba --noconfirm
    sudo systemctl enable smb nmb
    sudo bash -c "cat strings/config-samba > /etc/samba/smb.conf"
    sudo smbpasswd -a $username
    sudo bash -c "cat strings/ufw-samba > /etc/ufw/applications.d/samba"
    sudo ufw allow samba
    sudo ufw reload
fi

if [[ $osname == $debianstable ]]; then
    sudo apt install samba -y
    sudo systemctl enable smbd
    sudo bash -c "cat strings/config-samba > /etc/samba/smb.conf"
    sudo smbpasswd -a $username
    sudo ufw allow samba
    sudo ufw reload
fi

if [[ $osname == $debiansid ]]; then
    sudo apt install samba -y
    sudo systemctl enable smbd
    sudo bash -c "cat strings/config-samba > /etc/samba/smb.conf"
    sudo smbpasswd -a $username
    sudo ufw allow samba
    sudo ufw reload
fi

if [[ $osname == $fedora ]]; then
    sudo dnf install samba -y
    sudo systemctl enable smb.service nmb.service
    sudo bash -c "cat strings/config-samba > /etc/samba/smb.conf"
    sudo smbpasswd -a $username
    sudo firewall-cmd --add-service=samba --permanent
    sudo firewall-cmd --reload
fi

if [[ $osname == $ubuntults ]]; then
    sudo apt install samba -y
    sudo systemctl enable smbd
    sudo bash -c "cat strings/config-samba > /etc/samba/smb.conf"
    sudo smbpasswd -a $username
    sudo ufw allow samba
    sudo ufw reload
fi
