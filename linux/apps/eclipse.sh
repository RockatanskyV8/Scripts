#!/bin/bash
source config.sh

if [[ $osname == $archlinux ]]; then
sudo pacman -S eclipse-java --noconfirm
fi

if [[ $osname == $debianstable ]]; then
sudo apt install openjdk-8-jdk -y
sudo mkdir /tmp/eclipse
sudo wget $link_eclipse -O /tmp/eclipse/eclipse.tar.gz
sudo tar -zxvf /tmp/eclipse/eclipse.tar.gz -C /usr/
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

if [[ $osname == $debiansid ]]; then
sudo apt install openjdk-8-jdk -y
sudo mkdir /tmp/eclipse
sudo wget $link_eclipse -O /tmp/eclipse/eclipse.tar.gz
sudo tar -zxvf /tmp/eclipse/eclipse.tar.gz -C /usr/
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

if [[ $osname == $fedora ]]; then
sudo dnf install java-1.8.0-openjdk -y
sudo mkdir /tmp/eclipse
sudo wget $link_eclipse -O /tmp/eclipse/eclipse.tar.gz
sudo tar -zxvf /tmp/eclipse/eclipse.tar.gz -C /usr/
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
fi

if [[ $osname == $ubuntults ]]; then
sudo apt install openjdk-8-jdk -y
sudo mkdir /tmp/eclipse
sudo wget $link_eclipse -O /tmp/eclipse/eclipse.tar.gz
sudo tar -zxvf /tmp/eclipse/eclipse.tar.gz -C /usr/
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
