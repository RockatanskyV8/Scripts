#!/bin/bash
source config.sh

if [[ $osname == $archlinux ]]; then
sudo pacman -S mysql-workbench --noconfirm
fi

if [[ $osname == $debian9 ]]; then
sudo apt install mysql-workbench -y
fi

if [[ $osname == $debiansid ]]; then
sudo apt install mysql-workbench -y
fi

if [[ $osname == $fedora29 ]]; then
sudo dnf install https://cdn.mysql.com//Downloads/MySQLGUITools/mysql-workbench-community-8.0.13-1.fc29.x86_64.rpm -y
fi

if [[ $osname == $ubuntu1804 ]]; then
sudo apt install mysql-workbench -y
fi
