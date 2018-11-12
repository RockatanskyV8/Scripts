#!/bin/bash
source config.sh

if [[ $osname == "arch-linux" ]]; then
sudo mkdir /tmp/freetube
sudo wget https://github.com/FreeTubeApp/FreeTube/releases/download/v0.4.0-beta/FreeTube-linux-x64.zip -P /tmp/freetube
sudo unzip /tmp/freetube/FreeTube-linux-x64.zip -d /opt
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

if [[ $osname == "debian-9" ]]; then
sudo mkdir /tmp/freetube
sudo wget https://github.com/FreeTubeApp/FreeTube/releases/download/v0.4.0-beta/FreeTube-linux-x64.zip -P /tmp/freetube
sudo unzip /tmp/freetube/FreeTube-linux-x64.zip -d /opt
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

if [[ $osname == "debian-sid" ]]; then
sudo mkdir /tmp/freetube
sudo wget https://github.com/FreeTubeApp/FreeTube/releases/download/v0.4.0-beta/FreeTube-linux-x64.zip -P /tmp/freetube
sudo unzip /tmp/freetube/FreeTube-linux-x64.zip -d /opt
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

if [[ $osname == "fedora-29" ]]; then
sudo mkdir /tmp/freetube
sudo wget https://github.com/FreeTubeApp/FreeTube/releases/download/v0.4.0-beta/FreeTube-linux-x64.zip -P /tmp/freetube
sudo unzip /tmp/freetube/FreeTube-linux-x64.zip -d /opt
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
Icon=video-x-generic
Categories=AudioVideo;Player;
StartupNotify=true
EOM"
sudo rm -r /tmp/freetube
fi

if [[ $osname == "ubuntu-18.04" ]]; then
sudo mkdir /tmp/freetube
sudo wget https://github.com/FreeTubeApp/FreeTube/releases/download/v0.4.0-beta/FreeTube-linux-x64.zip -P /tmp/freetube
sudo unzip /tmp/freetube/FreeTube-linux-x64.zip -d /opt
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

if [[ $osname == "windows-10" ]]; then
$missing
fi
