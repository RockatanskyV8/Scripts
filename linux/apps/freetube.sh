#!/bin/bash
source config.sh

if [[ $osname == $archlinux ]]; then
sudo mkdir /tmp/freetube
sudo wget $link_freetube -O /tmp/freetube/freetube.zip
sudo unzip /tmp/freetube/freetube.zip -d /opt
sudo chmod +x /opt/FreeTube-linux-x64/FreeTube
sudo bash -c "cat >> /usr/share/applications/freetube.desktop <<- EOM
[Desktop Entry]
Name=Free Tube
Comment=Youtube desktop client
GenericName=Youtube Client
X-GNOME-FullName=FreeTube
Exec=/opt/FreeTube-linux-x64/FreeTube %u
Terminal=false
X-MultipleArgs=false
Type=Application
Icon=im-youtube
Categories=AudioVideo;Player;
StartupNotify=true
EOM"
sudo rm -r /tmp/freetube
fi

if [[ $osname == $debianstable ]]; then
sudo mkdir /tmp/freetube
sudo wget $link_freetube -O /tmp/freetube/freetube.zip
sudo unzip /tmp/freetube/freetube.zip -d /opt
sudo chmod +x /opt/freetube/FreeTube
sudo bash -c "cat >> /usr/share/applications/freetube.desktop <<- EOM
[Desktop Entry]
Name=Free Tube
Comment=Youtube desktop client
GenericName=Youtube Client
X-GNOME-FullName=FreeTube
Exec=/opt/FreeTube-linux-x64/FreeTube %u
Terminal=false
X-MultipleArgs=false
Type=Application
Icon=im-youtube
Categories=AudioVideo;Player;
StartupNotify=true
EOM"
sudo rm -r /tmp/freetube
fi

if [[ $osname == $debiansid ]]; then
sudo mkdir /tmp/freetube
sudo wget $link_freetube -O /tmp/freetube/freetube.zip
sudo unzip /tmp/freetube/freetube.zip -d /opt
sudo chmod +x /opt/freetube/FreeTube
sudo bash -c "cat >> /usr/share/applications/freetube.desktop <<- EOM
[Desktop Entry]
Name=Free Tube
Comment=Youtube desktop client
GenericName=Youtube Client
X-GNOME-FullName=FreeTube
Exec=/opt/FreeTube-linux-x64/FreeTube %u
Terminal=false
X-MultipleArgs=false
Type=Application
Icon=im-youtube
Categories=AudioVideo;Player;
StartupNotify=true
EOM"
sudo rm -r /tmp/freetube
fi

if [[ $osname == $fedora ]]; then
sudo mkdir /tmp/freetube
sudo wget $link_freetube -O /tmp/freetube/freetube.zip
sudo unzip /tmp/freetube/freetube.zip -d /opt
sudo chmod +x /opt/freetube/FreeTube
sudo bash -c "cat >> /usr/share/applications/freetube.desktop <<- EOM
[Desktop Entry]
Name=Free Tube
Comment=Youtube desktop client
GenericName=Youtube Client
X-GNOME-FullName=FreeTube
Exec=/opt/FreeTube-linux-x64/FreeTube %u
Terminal=false
X-MultipleArgs=false
Type=Application
Icon=im-youtube
Categories=AudioVideo;Player;
StartupNotify=true
EOM"
sudo rm -r /tmp/freetube
fi

if [[ $osname == $ubuntults ]]; then
sudo mkdir /tmp/freetube
sudo wget $link_freetube -O /tmp/freetube/freetube.zip
sudo unzip /tmp/freetube/freetube.zip -d /opt
sudo chmod +x /opt/freetube/FreeTube
sudo bash -c "cat >> /usr/share/applications/freetube.desktop <<- EOM
[Desktop Entry]
Name=Free Tube
Comment=Youtube desktop client
GenericName=Youtube Client
X-GNOME-FullName=FreeTube
Exec=/opt/FreeTube-linux-x64/FreeTube %u
Terminal=false
X-MultipleArgs=false
Type=Application
Icon=im-youtube
Categories=AudioVideo;Player;
StartupNotify=true
EOM"
sudo rm -r /tmp/freetube
fi
