#!/bin/bash
source config.sh

link_freetube="https://github.com/FreeTubeApp/FreeTube/releases/download/v0.6.0-beta/FreeTube-0.6.0-linux.zip"

if [[ $osname == $archlinux ]]; then
    sudo mkdir /tmp/freetube
    sudo wget $link_freetube -O /tmp/freetube/freetube.zip
    sudo mkdir /opt/freetube
    sudo unzip /tmp/freetube/freetube.zip -d /opt/freetube
    sudo chmod +x /opt/freetube/freetube
    sudo bash -c "cat strings/launcher-freetube > /usr/share/applications/freetube.desktop"
    sudo rm -r /tmp/freetube
fi

if [[ $osname == $debian ]]; then
    sudo mkdir /tmp/freetube
    sudo wget $link_freetube -O /tmp/freetube/freetube.zip
    sudo mkdir /opt/freetube
    sudo unzip /tmp/freetube/freetube.zip -d /opt/freetube
    sudo chmod +x /opt/freetube/freetube
    sudo bash -c "cat strings/launcher-freetube > /usr/share/applications/freetube.desktop"
    sudo rm -r /tmp/freetube
fi

if [[ $osname == $fedora ]]; then
    sudo mkdir /tmp/freetube
    sudo wget $link_freetube -O /tmp/freetube/freetube.zip
    sudo mkdir /opt/freetube
    sudo unzip /tmp/freetube/freetube.zip -d /opt/freetube
    sudo chmod +x /opt/freetube/freetube
    sudo bash -c "cat strings/launcher-freetube > /usr/share/applications/freetube.desktop"
    sudo rm -r /tmp/freetube
fi

if [[ $osname == $ubuntu ]]; then
    sudo mkdir /tmp/freetube
    sudo wget $link_freetube -O /tmp/freetube/freetube.zip
    sudo mkdir /opt/freetube
    sudo unzip /tmp/freetube/freetube.zip -d /opt/freetube
    sudo chmod +x /opt/freetube/freetube
    sudo bash -c "cat strings/launcher-freetube > /usr/share/applications/freetube.desktop"
    sudo rm -r /tmp/freetube
fi
