#!/bin/bash
source config.sh

# configures the unstable repo
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
sudo reboot
