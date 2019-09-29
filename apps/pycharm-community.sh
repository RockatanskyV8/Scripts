#!/bin/bash
source config.sh

link_pycharm="https://download.jetbrains.com/python/pycharm-community-2018.1.2.tar.gz"

if [[ $osname == $archlinux ]]; then
    sudo pacman -S pycharm-community-edition --noconfirm
fi

if [[ $osname == $debian ]]; then
    sudo apt install python3-pip -y
    sudo mkdir /tmp/pycharm-community
    sudo wget $link_pycharm -O /tmp/pycharm-community/pycharm-community.tar.gz
    sudo tar xvzf /tmp/pycharm-community/pycharm-community.tar.gz --directory /opt
    sudo rm -r /tmp/pycharm-community
    sudo bash -c "cat strings/launcher-pycharm-community > /usr/share/applications/pycharm-community.desktop"
fi

if [[ $osname == $fedora ]]; then
    sudo dnf install python3-pip -y
    sudo mkdir /tmp/pycharm-community
    sudo wget $link_pycharm -O /tmp/pycharm-community/pycharm-community.tar.gz
    sudo tar xvzf /tmp/pycharm-community/pycharm-community.tar.gz --directory /opt
    sudo rm -r /tmp/pycharm-community
    sudo bash -c "cat strings/launcher-pycharm-community > /usr/share/applications/pycharm-community.desktop"
fi

if [[ $osname == $ubuntu ]]; then
    sudo apt install python3-pip -y
    sudo mkdir /tmp/pycharm-community
    sudo wget $link_pycharm -O /tmp/pycharm-community/pycharm-community.tar.gz
    sudo tar xvzf /tmp/pycharm-community/pycharm-community.tar.gz --directory /opt
    sudo rm -r /tmp/pycharm-community
    sudo bash -c "cat strings/launcher-pycharm-community > /usr/share/applications/pycharm-community.desktop"
fi
