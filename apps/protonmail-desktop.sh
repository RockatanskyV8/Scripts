#!/bin/bash
source config.sh

link_protonmail_desktop="https://github.com/protonmail-desktop/application/releases/download/v1.0.0-beta.7/protonmail-desktop-1.0.0-beta.7-x86_64.AppImage"
link_protonmail_desktop_icon="https://raw.githubusercontent.com/protonmail-desktop/application/master/app/static/Icon.png"

if [[ $osname == $archlinux ]]; then
    sudo mkdir /tmp/protonmail
    sudo wget $link_protonmail_desktop_icon -O /tmp/protonmail/icon.png
    sudo wget $link_protonmail_desktop -O /tmp/protonmail/protonmail
    sudo mkdir /opt/protonmail
    sudo mv /tmp/protonmail/icon.png /opt/protonmail
    sudo mv /tmp/protonmail/protonmail /opt/protonmail
    sudo chmod +x /opt/protonmail/protonmail
    sudo bash -c "cat strings/launcher-protonmail-desktop > /usr/share/applications/protonmail-desktop.desktop"
    sudo rm -r /tmp/protonmail
fi

if [[ $osname == $debianstable ]]; then
    sudo mkdir /tmp/protonmail
    sudo wget $link_protonmail_desktop_icon -O /tmp/protonmail/icon.png
    sudo wget $link_protonmail_desktop -O /tmp/protonmail/protonmail
    sudo mkdir /opt/protonmail
    sudo mv /tmp/protonmail/icon.png /opt/protonmail
    sudo mv /tmp/protonmail/protonmail /opt/protonmail
    sudo chmod +x /opt/protonmail/protonmail
    sudo bash -c "cat strings/launcher-protonmail-desktop > /usr/share/applications/protonmail-desktop.desktop"
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
    sudo bash -c "cat strings/launcher-protonmail-desktop > /usr/share/applications/protonmail-desktop.desktop"
    sudo rm -r /tmp/protonmail
fi

if [[ $osname == $fedora ]]; then
    sudo mkdir /tmp/protonmail
    sudo wget $link_protonmail_desktop_icon -O /tmp/protonmail/icon.png
    sudo wget $link_protonmail_desktop -O /tmp/protonmail/protonmail
    sudo mkdir /opt/protonmail
    sudo mv /tmp/protonmail/icon.png /opt/protonmail
    sudo mv /tmp/protonmail/protonmail /opt/protonmail
    sudo chmod +x /opt/protonmail/protonmail
    sudo bash -c "cat strings/launcher-protonmail-desktop > /usr/share/applications/protonmail-desktop.desktop"
    sudo rm -r /tmp/protonmail
fi

if [[ $osname == $ubuntults ]]; then
    sudo mkdir /tmp/protonmail
    sudo wget $link_protonmail_desktop_icon -O /tmp/protonmail/icon.png
    sudo wget $link_protonmail_desktop -O /tmp/protonmail/protonmail
    sudo mkdir /opt/protonmail
    sudo mv /tmp/protonmail/icon.png /opt/protonmail
    sudo mv /tmp/protonmail/protonmail /opt/protonmail
    sudo chmod +x /opt/protonmail/protonmail
    sudo bash -c "cat strings/launcher-protonmail-desktop > /usr/share/applications/protonmail-desktop.desktop"
    sudo rm -r /tmp/protonmail
fi
