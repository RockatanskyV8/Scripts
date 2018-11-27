#!/bin/bash
source config.sh

if [[ $osname == "arch-linux" ]]; then
sudo pakku -S eclipse-java --noconfirm
fi

if [[ $osname == "debian-9" ]]; then
sudo apt install openjdk-8-jdk -y
sudo mkdir /tmp/eclipse
sudo wget http://eclipse.c3sl.ufpr.br/technology/epp/downloads/release/photon/R/eclipse-java-photon-R-linux-gtk-x86_64.tar.gz -P /tmp/eclipse
sudo tar -zxvf /tmp/eclipse/eclipse-java-photon-R-linux-gtk-x86_64.tar.gz -C /usr/
sudo rm -r /tmp/eclipse
sudo ln -s /usr/eclipse/eclipse /usr/bin/eclipse
sudo bash -c "cat >> /usr/share/applications/eclipse.desktop <<- EOM
[Desktop Entry]
Encoding=UTF-8
Name=Eclipse 4.7
Comment=Eclipse
Exec=/usr/bin/eclipse
Icon=/usr/eclipse/icon.xpm
Categories=Development;IDE;
Terminal=false  
Type=Application   
StartupNotify=false
EOM"
sudo update-java-alternatives --jre-headless --jre --set java-1.8.0-openjdk-amd64
fi

if [[ $osname == "debian-sid" ]]; then
sudo apt install openjdk-8-jdk -y
sudo mkdir /tmp/eclipse
sudo wget http://eclipse.c3sl.ufpr.br/technology/epp/downloads/release/photon/R/eclipse-java-photon-R-linux-gtk-x86_64.tar.gz -P /tmp/eclipse
sudo tar -zxvf /tmp/eclipse/eclipse-java-photon-R-linux-gtk-x86_64.tar.gz -C /usr/
sudo rm -r /tmp/eclipse
sudo ln -s /usr/eclipse/eclipse /usr/bin/eclipse
sudo bash -c "cat >> /usr/share/applications/eclipse.desktop <<- EOM
[Desktop Entry]
Encoding=UTF-8
Name=Eclipse 4.7
Comment=Eclipse
Exec=/usr/bin/eclipse
Icon=/usr/eclipse/icon.xpm
Categories=Development;IDE;
Terminal=false  
Type=Application   
StartupNotify=false
EOM"
sudo update-java-alternatives --jre-headless --jre --set java-1.8.0-openjdk-amd64
fi

if [[ $osname == "fedora-29" ]]; then
$missing
fi

if [[ $osname == "ubuntu-18.04" ]]; then
sudo apt install openjdk-8-jdk -y
sudo mkdir /tmp/eclipse
sudo wget http://eclipse.c3sl.ufpr.br/technology/epp/downloads/release/photon/R/eclipse-java-photon-R-linux-gtk-x86_64.tar.gz -P /tmp/eclipse
sudo tar -zxvf /tmp/eclipse/eclipse-java-photon-R-linux-gtk-x86_64.tar.gz -C /usr/
sudo rm -r /tmp/eclipse
sudo ln -s /usr/eclipse/eclipse /usr/bin/eclipse
sudo bash -c "cat >> /usr/share/applications/eclipse.desktop <<- EOM
[Desktop Entry]
Encoding=UTF-8
Name=Eclipse 4.7
Comment=Eclipse
Exec=/usr/bin/eclipse
Icon=/usr/eclipse/icon.xpm
Categories=Development;IDE;
Terminal=false  
Type=Application   
StartupNotify=false
EOM"
sudo update-java-alternatives --jre-headless --jre --set java-1.8.0-openjdk-amd64
fi
