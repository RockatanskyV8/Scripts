#!/bin/bash
source config.sh

# configures the unstable repo
sudo bash -c "cat > /etc/apt/sources.list <<- EOM
deb http://ftp.br.debian.org/debian/ unstable main contrib non-free
deb-src http://ftp.br.debian.org/debian/ unstable main contrib non-free
EOM"

# adds the option to install from stable - clementine will always be installed from stable (the unstable version has a bug with the icons)
sudo bash -c "cat > /etc/apt/preferences.d/stable.pref <<- EOM
Package: *
Pin: release a=stable
Pin-Priority: 50

Package: clementine
Pin: release a=stable
Pin-Priority: 1000
EOM"
sudo bash -c "cat > /etc/apt/sources.list.d/stable.list <<- EOM
deb http://ftp.br.debian.org/debian/ stable main contrib non-free
deb-src http://ftp.br.debian.org/debian/ stable main contrib non-free
EOM"

sudo apt update
sudo apt dist-upgrade -y
sudo reboot
