#!/bin/bash
source config.sh

if [[ $osname == "arch-linux" ]]; then
sudo pakku -S mysql-workbench --noconfirm
fi

if [[ $osname == "debian-9" ]]; then
sudo apt install mysql-workbench -y
fi

if [[ $osname == "debian-sid" ]]; then
sudo apt install mysql-workbench -y
fi

if [[ $osname == "fedora-29" ]]; then
sudo dnf install https://cdn.mysql.com//Downloads/MySQLGUITools/mysql-workbench-community-8.0.13-1.fc29.x86_64.rpm -y
fi

if [[ $osname == "ubuntu-18.04" ]]; then
sudo apt install mysql-workbench -y
fi
