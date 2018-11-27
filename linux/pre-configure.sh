#!/bin/bash
source config.sh

if [[ $osname == "arch-linux" ]]; then
sudo chmod +x *
sudo chmod +x apps/*
sudo chmod +x tweaks/*

sudo bash -c "cat >> /etc/pacman.conf <<- EOM
[multilib]
Include = /etc/pacman.d/mirrorlist
EOM"
sudo pacman -Syyu

sudo pacman -S git unzip wget fuse python-pip --noconfirm

git clone https://aur.archlinux.org/pakku.git
cd pakku
makepkg -si
cd ..
rm -rf pakku

#sudo bash -c "cat >> /etc/pakku.conf <<- EOM
#ViewNoDefault
#PreserveBuilt = User
#EOM"

sudo pakku -S ufw --noconfirm
sudo ufw enable
sudo systemctl enable ufw
sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw reload
fi

if [[ $osname == "debian-9" ]]; then
sudo chmod +x *
sudo chmod +x apps/*
sudo chmod +x tweaks/*

sudo dpkg --add-architecture i386
sudo apt update

sudo apt install git unzip wget fuse python3-pip -y

sudo apt install ufw -y
sudo ufw enable
sudo systemctl enable ufw
sudo ufw default deny incoming
sudo ufw default allow outgoing

sudo bash -c "cat > /etc/apt/sources.list <<- EOM
deb http://ftp.br.debian.org/debian/ stable main contrib non-free
deb-src http://ftp.br.debian.org/debian/ stable main contrib non-free

deb http://security.debian.org/debian-security stable/updates main contrib non-free
deb-src http://security.debian.org/debian-security stable/updates main contrib non-free

deb http://ftp.br.debian.org/debian/ stable-updates main contrib non-free
deb-src http://ftp.br.debian.org/debian/ stable-updates main contrib non-free
EOM"

sudo apt update
sudo apt dist-upgrade -y
fi

if [[ $osname == "debian-sid" ]]; then
sudo chmod +x *
sudo chmod +x apps/*
sudo chmod +x tweaks/*

sudo dpkg --add-architecture i386
sudo apt update

sudo apt install git unzip wget fuse python3-pip -y

sudo apt install ufw -y
sudo ufw enable
sudo systemctl enable ufw
sudo ufw default deny incoming
sudo ufw default allow outgoing

sudo bash -c "cat > /etc/apt/sources.list <<- EOM
deb http://ftp.br.debian.org/debian/ unstable main contrib non-free
deb-src http://ftp.br.debian.org/debian/ unstable main contrib non-free
EOM"

sudo bash -c "cat > /etc/apt/preferences.d/stable.pref <<- EOM
Package: *
Pin: release a=stable
Pin-Priority: 50
EOM"

sudo bash -c "cat > /etc/apt/sources.list.d/stable.list <<- EOM
deb http://ftp.br.debian.org/debian/ stable main contrib non-free
deb-src http://ftp.br.debian.org/debian/ stable main contrib non-free
EOM"

sudo apt update
sudo apt dist-upgrade -y
fi

if [[ $osname == "fedora-29" ]]; then
sudo chmod +x *
sudo chmod +x apps/*
sudo chmod +x tweaks/*

sudo su -c 'dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm -y'
sudo dnf install git unzip wget fuse python-pip -y
fi

if [[ $osname == "ubuntu-18.04" ]]; then
sudo chmod +x *
sudo chmod +x apps/*
sudo chmod +x tweaks/*

sudo apt install tasksel -y

sudo apt install git unzip wget fuse python3-pip -y

sudo apt install ufw -y
sudo ufw enable
sudo systemctl enable ufw
sudo ufw default deny incoming
sudo ufw default allow outgoing
fi
