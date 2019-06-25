#!/bin/bash
source config.sh

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
sudo bash -c "cat >> /usr/share/applications/gitkraken.desktop <<- EOM
[Desktop Entry]
Name=GitKraken
Comment=Graphical Git client
Exec=/opt/gitkraken/gitkraken
Icon=/opt/gitkraken/icon.png
Terminal=false
Type=Application
Encoding=UTF-8
Categories=Utility;Development;
EOM"
sudo rm -r /tmp/gitkraken
fi

if [[ $osname == $ubuntults ]]; then
sudo apt install gconf2 gvfs-bin -y
sudo mkdir /tmp/gitkraken
sudo wget $link_gitkraken_deb -O /tmp/gitkraken/gitkraken.deb
sudo dpkg -i /tmp/gitkraken/gitkraken.deb
sudo rm -r /tmp/gitkraken
fi
