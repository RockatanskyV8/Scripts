#!/bin/bash
source config.sh

if [[ $osname == $archlinux ]]; then
sudo pacman -S pycharm-community-edition --noconfirm
fi

if [[ $osname == $debian9 ]]; then
sudo apt install python3-pip -y
sudo mkdir /tmp/pycharm-community
sudo wget $link_pycharm -O /tmp/pycharm-community/pycharm-community.tar.gz
sudo tar xvzf /tmp/pycharm-community/pycharm-community.tar.gz --directory /opt
sudo rm -r /tmp/pycharm-community
sudo bash -c "cat >> /usr/share/applications/jetbrains-pycharm-ce.desktop <<- EOM
[Desktop Entry]
Version=1.0
Type=Application
Name=PyCharm Community Edition
Icon=/opt/pycharm-community-2018.1.2/bin/pycharm.png
Exec=\"/opt/pycharm-community-2018.1.2/bin/pycharm.sh\" %f
Comment=The Drive to Develop
Categories=Development;IDE;
Terminal=false
StartupWMClass=jetbrains-pycharm-ce
EOM"
fi

if [[ $osname == $debiansid ]]; then
sudo apt install python3-pip -y
sudo mkdir /tmp/pycharm-community
sudo wget $link_pycharm -O /tmp/pycharm-community/pycharm-community.tar.gz
sudo tar xvzf /tmp/pycharm-community/pycharm-community.tar.gz --directory /opt
sudo rm -r /tmp/pycharm-community
sudo bash -c "cat >> /usr/share/applications/jetbrains-pycharm-ce.desktop <<- EOM
[Desktop Entry]
Version=1.0
Type=Application
Name=PyCharm Community Edition
Icon=/opt/pycharm-community/bin/pycharm.png
Exec=\"/opt/pycharm-community/bin/pycharm.sh\" %f
Comment=The Drive to Develop
Categories=Development;IDE;
Terminal=false
StartupWMClass=jetbrains-pycharm-ce
EOM"
fi

if [[ $osname == $fedora29 ]]; then
sudo dnf install python3-pip -y
sudo mkdir /tmp/pycharm-community
sudo wget $link_pycharm -O /tmp/pycharm-community/pycharm-community.tar.gz
sudo tar xvzf /tmp/pycharm-community/pycharm-community.tar.gz --directory /opt
sudo rm -r /tmp/pycharm-community
sudo bash -c "cat >> /usr/share/applications/jetbrains-pycharm-ce.desktop <<- EOM
[Desktop Entry]
Version=1.0
Type=Application
Name=PyCharm Community Edition
Icon=/opt/pycharm-community/bin/pycharm.png
Exec=\"/opt/pycharm-community/bin/pycharm.sh\" %f
Comment=The Drive to Develop
Categories=Development;IDE;
Terminal=false
StartupWMClass=jetbrains-pycharm-ce
EOM"
fi

if [[ $osname == $ubuntu1804 ]]; then
sudo apt install python3-pip -y
sudo mkdir /tmp/pycharm-community
sudo wget $link_pycharm -O /tmp/pycharm-community/pycharm-community.tar.gz
sudo tar xvzf /tmp/pycharm-community/pycharm-community.tar.gz --directory /opt
sudo rm -r /tmp/pycharm-community
sudo bash -c "cat >> /usr/share/applications/jetbrains-pycharm-ce.desktop <<- EOM
[Desktop Entry]
Version=1.0
Type=Application
Name=PyCharm Community Edition
Icon=/opt/pycharm-community/bin/pycharm.png
Exec=\"/opt/pycharm-community/bin/pycharm.sh\" %f
Comment=The Drive to Develop
Categories=Development;IDE;
Terminal=false
StartupWMClass=jetbrains-pycharm-ce
EOM"
fi
