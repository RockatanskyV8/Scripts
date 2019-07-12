#!/bin/bash
source config.sh

# grant execution permission to all .sh files
find . -name "*.sh" -exec chmod +x {} \;

if [[ $osname == $archlinux ]]; then
    sudo bash -c "cat strings/config-arch-repo >> /etc/pacman.conf"
    sudo pacman -Syyu

    sudo pacman -S git unzip wget fuse python-pip --noconfirm

    sudo pacman -S ufw --noconfirm
    sudo ufw enable
    sudo systemctl enable ufw
    sudo ufw default deny incoming
    sudo ufw default allow outgoing
    sudo ufw reload
fi

if [[ $osname == $debian ]]; then
    sudo bash -c "cat strings/config-debian-repo > /etc/apt/sources.list"

    sudo dpkg --add-architecture i386
    sudo apt update
    sudo apt dist-upgrade -y

    sudo apt install git unzip wget fuse python3-pip -y

    sudo apt install ufw -y
    sudo ufw enable
    sudo systemctl enable ufw
    sudo ufw default deny incoming
    sudo ufw default allow outgoing
    
    sudo apt install firmware-linux-free firmware-linux-nonfree -y
fi

if [[ $osname == $fedora ]]; then
    link_rpmfusionfree="https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm"
    link_rpmfusionnonfree="https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm"

    sudo dnf install $link_rpmfusionfree -y
    sudo dnf install $link_rpmfusionnonfree -y

    sudo dnf install git unzip wget fuse python-pip -y
fi

if [[ $osname == $ubuntu ]]; then
    sudo apt install tasksel -y

    sudo apt install git unzip wget fuse python3-pip -y

    sudo apt install ufw -y
    sudo ufw enable
    sudo systemctl enable ufw
    sudo ufw default deny incoming
    sudo ufw default allow outgoing
fi
