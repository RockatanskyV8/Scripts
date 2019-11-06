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

if [[ $osname == $debian ]]; then
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
    sudo run setsebool -P samba_domain_controller on
    # run 'sudo chcon -t samba_share_t /path/to/folder -R' to allow samba to access a folder mounted under /
    # if running VMs on libvirt, also run sudo firewall-cmd --zone=libvirt --add-service=samba --permanent && sudo firewall-cmd --reload to allow them to access shared folders from the virbr0 interface
fi

if [[ $osname == $ubuntu ]]; then
    sudo apt install samba -y
    sudo systemctl enable smbd
    sudo bash -c "cat strings/config-samba > /etc/samba/smb.conf"
    sudo smbpasswd -a $username
    sudo ufw allow samba
    sudo ufw reload
fi
