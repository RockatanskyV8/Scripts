#!/bin/bash
source config.sh

if [[ $osname == $archlinux ]]; then
sudo mkdir /tmp/protonmail
sudo wget $link_protonmail_desktop_icon -O /tmp/protonmail/icon.png
sudo wget $link_protonmail_desktop -O /tmp/protonmail/protonmail
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

if [[ $osname == $debian9 ]]; then
sudo mkdir /tmp/protonmail
sudo wget $link_protonmail_desktop_icon -O /tmp/protonmail/icon.png
sudo wget $link_protonmail_desktop -O /tmp/protonmail/protonmail
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

if [[ $osname == $debiansid ]]; then
sudo mkdir /tmp/protonmail
sudo wget $link_protonmail_desktop_icon -O /tmp/protonmail/icon.png
sudo wget $link_protonmail_desktop -O /tmp/protonmail/protonmail
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

if [[ $osname == $fedora29 ]]; then
sudo mkdir /tmp/protonmail
sudo wget $link_protonmail_desktop_icon -O /tmp/protonmail/icon.png
sudo wget $link_protonmail_desktop -O /tmp/protonmail/protonmail
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

if [[ $osname == $ubuntu1804 ]]; then
sudo mkdir /tmp/protonmail
sudo wget $link_protonmail_desktop_icon -O /tmp/protonmail/icon.png
sudo wget $link_protonmail_desktop -O /tmp/protonmail/protonmail
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
