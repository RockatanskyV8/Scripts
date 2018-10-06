#!/bin/bash
source config.sh

# configures the unstable repo
sudo bash -c "cat > /etc/apt/sources.list <<- EOM
deb http://ftp.br.debian.org/debian/ unstable main contrib non-free
deb-src http://ftp.br.debian.org/debian/ unstable main contrib non-free
EOM"

# adds the option to install from stable - ark from unstable has a bug with zipping from the gui, so will be installed from stable
sudo bash -c "cat > /etc/apt/preferences.d/stable.pref <<- EOM
Package: *
Pin: release a=stable
Pin-Priority: 50

Package: ark
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
