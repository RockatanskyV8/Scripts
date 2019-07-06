#!/bin/bash
source config.sh

link_eclipse="http://eclipse.c3sl.ufpr.br/technology/epp/downloads/release/photon/R/eclipse-java-photon-R-linux-gtk-x86_64.tar.gz"

if [[ $osname == $archlinux ]]; then
    sudo pacman -S eclipse-java --noconfirm
fi

if [[ $osname == $debian ]]; then
    sudo apt install openjdk-11-jdk -y
    sudo mkdir /tmp/eclipse
    sudo wget $link_eclipse -O /tmp/eclipse/eclipse.tar.gz
    sudo tar -zxvf /tmp/eclipse/eclipse.tar.gz -C /usr/
    sudo rm -r /tmp/eclipse
    sudo ln -s /usr/eclipse/eclipse /usr/bin/eclipse
    sudo bash -c "cat strings/launcher-eclipse > /usr/share/applications/eclipse.desktop"
    sudo update-java-alternatives --jre-headless --jre --set java-1.8.0-openjdk-amd64
fi

if [[ $osname == $fedora ]]; then
    sudo dnf install java-1.8.0-openjdk -y
    sudo mkdir /tmp/eclipse
    sudo wget $link_eclipse -O /tmp/eclipse/eclipse.tar.gz
    sudo tar -zxvf /tmp/eclipse/eclipse.tar.gz -C /usr/
    sudo rm -r /tmp/eclipse
    sudo ln -s /usr/eclipse/eclipse /usr/bin/eclipse
    sudo bash -c "cat strings/launcher-eclipse > /usr/share/applications/eclipse.desktop"
fi

if [[ $osname == $ubuntu ]]; then
    sudo apt install openjdk-8-jdk -y
    sudo mkdir /tmp/eclipse
    sudo wget $link_eclipse -O /tmp/eclipse/eclipse.tar.gz
    sudo tar -zxvf /tmp/eclipse/eclipse.tar.gz -C /usr/
    sudo rm -r /tmp/eclipse
    sudo ln -s /usr/eclipse/eclipse /usr/bin/eclipse
    sudo bash -c "cat strings/launcher-eclipse > /usr/share/applications/eclipse.desktop"
    sudo update-java-alternatives --jre-headless --jre --set java-1.8.0-openjdk-amd64
fi
