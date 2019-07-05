#!/bin/bash
source config.sh

link_gitkraken_libssl1_0="http://ftp.br.debian.org/debian/pool/main/o/openssl/libssl1.0.0_1.0.1t-1+deb8u8_amd64.deb"
link_gitkraken_deb="https://release.gitkraken.com/linux/gitkraken-amd64.deb"
link_gitkraken_targz="https://release.gitkraken.com/linux/gitkraken-amd64.tar.gz"
link_girkraken_icon="http://img.informer.com/icons_mac/png/128/422/422255.png"

if [[ $osname == $archlinux ]]; then
    git clone https://aur.archlinux.org/gitkraken
    cd gitkraken
    makepkg -si --noconfirm
    cd ..
    rm -rf gitkraken
fi

if [[ $osname == $debianstable ]]; then
    sudo apt install gconf2 gvfs-bin -y
    sudo apt install libgnome-keyring-common libgnome-keyring-dev -y
    sudo mkdir /tmp/gitkraken
    sudo wget $link_gitkraken_libssl1_0 -O /tmp/gitkraken/libssl1_0.deb
    sudo dpkg -i /tmp/gitkraken/libssl1_0.deb
    sudo wget $link_gitkraken_deb -O /tmp/gitkraken/gitkraken.deb
    sudo dpkg -i /tmp/gitkraken/gitkraken.deb
    sudo rm -r /tmp/gitkraken
fi

if [[ $osname == $debiansid ]]; then
    sudo apt install gconf2 gvfs-bin -y
    sudo apt install libgnome-keyring-common libgnome-keyring-dev -y
    sudo mkdir /tmp/gitkraken
    sudo wget $link_gitkraken_libssl1_0 -O /tmp/gitkraken/libssl1_0.deb
    sudo dpkg -i /tmp/gitkraken/libssl1_0.deb
    sudo wget $link_gitkraken_deb -O /tmp/gitkraken/gitkraken.deb
    sudo dpkg -i /tmp/gitkraken/gitkraken.deb
    sudo rm -r /tmp/gitkraken
fi

if [[ $osname == $fedora ]]; then
    sudo dnf install libgnome-keyring -y
    sudo mkdir /tmp/gitkraken
    sudo wget $link_gitkraken_targz -O /tmp/gitkraken/gitkraken.tar.gz
    sudo wget http://img.informer.com/icons_mac/png/128/422/422255.png -O /tmp/gitkraken/icon.png
    sudo tar xvzf /tmp/gitkraken/gitkraken.tar.gz --directory /opt
    sudo ln -s /usr/lib64/libcurl.so.4 /usr/lib64/libcurl-gnutls.so.4
    sudo cp /tmp/gitkraken/icon.png /opt/gitkraken
    sudo bash -c "cat strings/launcher-gitkraken > /usr/share/applications/gitkraken.desktop"
    sudo rm -r /tmp/gitkraken
fi

if [[ $osname == $ubuntults ]]; then
    sudo apt install gconf2 gvfs-bin -y
    sudo mkdir /tmp/gitkraken
    sudo wget $link_gitkraken_deb -O /tmp/gitkraken/gitkraken.deb
    sudo dpkg -i /tmp/gitkraken/gitkraken.deb
    sudo rm -r /tmp/gitkraken
fi
