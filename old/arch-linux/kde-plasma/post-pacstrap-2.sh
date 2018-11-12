#!/bin/bash
source config.sh

dhcpcd
# waiting for connection
sleep 30

useradd --create-home $username
passwd $username
groupadd sudo
usermod -aG sudo $username
echo "%sudo ALL=(ALL) ALL" >> /etc/sudoers

#pacman -S intel-ucode

# will install all video drivers
pacman -S $(pacman -Sqs xf86-video*)

# use this for kvm
# pacman -U https://archive.archlinux.org/packages/x/xf86-video-qxl/xf86-video-qxl-0.1.5-5-x86_64.pkg.tar.xz

pacman -S xorg-server

# plasma
pacman -S plasma-meta kdebase kde-gtk-config
systemctl enable sddm

pacman -S networkmanager
systemctl enable NetworkManager

pacman -S haveged
systemctl enable haveged

reboot
