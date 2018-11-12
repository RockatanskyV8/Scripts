#!/bin/bash
source config.sh

if [[ $osname == "arch-linux" ]]; then
sudo mkdir /tmp/protonmail
sudo wget https://raw.githubusercontent.com/protonmail-desktop/application/master/app/static/Icon.png -O /tmp/protonmail/icon.png
sudo wget https://github.com/protonmail-desktop/application/releases/download/v0.5.9/protonmail-desktop-0.5.9-x86_64.AppImage -O /tmp/protonmail/protonmail
sudo mkdir /opt/protonmail
sudo mv /tmp/protonmail/icon.png /opt/protonmail
sudo mv /tmp/protonmail/protonmail /opt/protonmail
sudo chmod +x /opt/protonmail/protonmail
sudo bash -c "cat >> /usr/share/applications/protonmail.desktop <<- EOM
[Desktop Entry]
Name=Proton Mail
Comment=Secure Email desktop client
GenericName=Mail Client
X-GNOME-FullName=Proton Mail
Exec=/opt/protonmail/protonmail %u
Terminal=false
X-MultipleArgs=false
Type=Application
Icon=/opt/protonmail/icon.png
Categories=Network;
StartupNotify=true
EOM"
sudo rm -r /tmp/protonmail
fi

if [[ $osname == "debian-9" ]]; then
sudo mkdir /tmp/protonmail
sudo wget https://raw.githubusercontent.com/protonmail-desktop/application/master/app/static/Icon.png -O /tmp/protonmail/icon.png
sudo wget https://github.com/protonmail-desktop/application/releases/download/v0.5.9/protonmail-desktop-0.5.9-x86_64.AppImage -O /tmp/protonmail/protonmail
sudo mkdir /opt/protonmail
sudo mv /tmp/protonmail/icon.png /opt/protonmail
sudo mv /tmp/protonmail/protonmail /opt/protonmail
sudo chmod +x /opt/protonmail/protonmail
sudo bash -c "cat >> /usr/share/applications/protonmail.desktop <<- EOM
[Desktop Entry]
Name=Proton Mail
Comment=Secure Email desktop client
GenericName=Mail Client
X-GNOME-FullName=Proton Mail
Exec=/opt/protonmail/protonmail %u
Terminal=false
X-MultipleArgs=false
Type=Application
Icon=/opt/protonmail/icon.png
Categories=Network;
StartupNotify=true
EOM"
sudo rm -r /tmp/protonmail
fi

if [[ $osname == "debian-sid" ]]; then
sudo mkdir /tmp/protonmail
sudo wget https://raw.githubusercontent.com/protonmail-desktop/application/master/app/static/Icon.png -O /tmp/protonmail/icon.png
sudo wget https://github.com/protonmail-desktop/application/releases/download/v0.5.9/protonmail-desktop-0.5.9-x86_64.AppImage -O /tmp/protonmail/protonmail
sudo mkdir /opt/protonmail
sudo mv /tmp/protonmail/icon.png /opt/protonmail
sudo mv /tmp/protonmail/protonmail /opt/protonmail
sudo chmod +x /opt/protonmail/protonmail
sudo bash -c "cat >> /usr/share/applications/protonmail.desktop <<- EOM
[Desktop Entry]
Name=Proton Mail
Comment=Secure Email desktop client
GenericName=Mail Client
X-GNOME-FullName=Proton Mail
Exec=/opt/protonmail/protonmail %u
Terminal=false
X-MultipleArgs=false
Type=Application
Icon=/opt/protonmail/icon.png
Categories=Network;
StartupNotify=true
EOM"
sudo rm -r /tmp/protonmail
fi

if [[ $osname == "fedora-29" ]]; then
sudo mkdir /tmp/protonmail
sudo wget https://raw.githubusercontent.com/protonmail-desktop/application/master/app/static/Icon.png -O /tmp/protonmail/icon.png
sudo wget https://github.com/protonmail-desktop/application/releases/download/v0.5.9/protonmail-desktop-0.5.9-x86_64.AppImage -O /tmp/protonmail/protonmail
sudo mkdir /opt/protonmail
sudo mv /tmp/protonmail/icon.png /opt/protonmail
sudo mv /tmp/protonmail/protonmail /opt/protonmail
sudo chmod +x /opt/protonmail/protonmail
sudo bash -c "cat >> /usr/share/applications/protonmail.desktop <<- EOM
[Desktop Entry]
Name=Proton Mail
Comment=Secure Email desktop client
GenericName=Mail Client
X-GNOME-FullName=Proton Mail
Exec=/opt/protonmail/protonmail %u
Terminal=false
X-MultipleArgs=false
Type=Application
Icon=/opt/protonmail/icon.png
Categories=Network;
StartupNotify=true
EOM"
sudo rm -r /tmp/protonmail
fi

if [[ $osname == "ubuntu-18.04" ]]; then
sudo mkdir /tmp/protonmail
sudo wget https://raw.githubusercontent.com/protonmail-desktop/application/master/app/static/Icon.png -O /tmp/protonmail/icon.png
sudo wget https://github.com/protonmail-desktop/application/releases/download/v0.5.9/protonmail-desktop-0.5.9-x86_64.AppImage -O /tmp/protonmail/protonmail
sudo mkdir /opt/protonmail
sudo mv /tmp/protonmail/icon.png /opt/protonmail
sudo mv /tmp/protonmail/protonmail /opt/protonmail
sudo chmod +x /opt/protonmail/protonmail
sudo bash -c "cat >> /usr/share/applications/protonmail.desktop <<- EOM
[Desktop Entry]
Name=Proton Mail
Comment=Secure Email desktop client
GenericName=Mail Client
X-GNOME-FullName=Proton Mail
Exec=/opt/protonmail/protonmail %u
Terminal=false
X-MultipleArgs=false
Type=Application
Icon=/opt/protonmail/icon.png
Categories=Network;
StartupNotify=true
EOM"
sudo rm -r /tmp/protonmail
fi

if [[ $osname == "windows-10" ]]; then

fi
