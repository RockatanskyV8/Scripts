#!/bin/bash
source config.sh

if [[ $osname == "arch-linux" ]]; then
sudo pakku -S gitkraken --noconfirm
fi

if [[ $osname == "debian-9" ]]; then
sudo apt install gconf2 gvfs-bin -y
sudo apt install libgnome-keyring-common libgnome-keyring-dev -y
sudo mkdir /tmp/gitkraken
sudo wget http://ftp.br.debian.org/debian/pool/main/o/openssl/libssl1.0.0_1.0.1t-1+deb8u8_amd64.deb -P /tmp/gitkraken
sudo dpkg -i /tmp/gitkraken/libssl1.0.0_1.0.1t-1+deb8u8_amd64.deb
sudo wget https://release.gitkraken.com/linux/gitkraken-amd64.deb -P /tmp/gitkraken
sudo dpkg -i /tmp/gitkraken/gitkraken-amd64.deb
sudo rm -r /tmp/gitkraken
fi

if [[ $osname == "debian-sid" ]]; then
sudo apt install gconf2 gvfs-bin -y
sudo apt install libgnome-keyring-common libgnome-keyring-dev -y
sudo mkdir /tmp/gitkraken
sudo wget http://ftp.br.debian.org/debian/pool/main/o/openssl/libssl1.0.0_1.0.1t-1+deb8u8_amd64.deb -P /tmp/gitkraken
sudo dpkg -i /tmp/gitkraken/libssl1.0.0_1.0.1t-1+deb8u8_amd64.deb
sudo wget https://release.gitkraken.com/linux/gitkraken-amd64.deb -P /tmp/gitkraken
sudo dpkg -i /tmp/gitkraken/gitkraken-amd64.deb
sudo rm -r /tmp/gitkraken
fi

if [[ $osname == "fedora-29" ]]; then
sudo dnf install libgnome-keyring -y
sudo mkdir /tmp/gitkraken
sudo wget https://release.gitkraken.com/linux/gitkraken-amd64.tar.gz -P /tmp/gitkraken
sudo wget http://img.informer.com/icons_mac/png/128/422/422255.png -P /tmp/gitkraken
sudo tar xvzf /tmp/gitkraken/gitkraken-amd64.tar.gz --directory /opt
sudo ln -s /usr/lib64/libcurl.so.4 /usr/lib64/libcurl-gnutls.so.4
sudo cp /tmp/gitkraken/422255.png /opt/gitkraken
sudo bash -c "cat >> /usr/share/applications/gitkraken.desktop <<- EOM
[Desktop Entry]
Name=GitKraken
Comment=Graphical Git client
Exec=/opt/gitkraken/gitkraken
Icon=/opt/gitkraken/422255.png
Terminal=false
Type=Application
Encoding=UTF-8
Categories=Utility;Development;
EOM"
sudo rm -r /tmp/gitkraken
fi

if [[ $osname == "ubuntu-18.04" ]]; then
sudo apt install gconf2 gvfs-bin -y
sudo mkdir /tmp/gitkraken
sudo wget https://release.gitkraken.com/linux/gitkraken-amd64.deb -P /tmp/gitkraken
sudo dpkg -i /tmp/gitkraken/gitkraken-amd64.deb
sudo rm -r /tmp/gitkraken
fi
