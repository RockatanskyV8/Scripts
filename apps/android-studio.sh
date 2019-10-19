#!/bin/bash
source config.sh

link_android_studio="https://dl.google.com/dl/android/studio/ide-zips/3.5.1.0/android-studio-ide-191.5900203-linux.tar.gz"

if [[ $osname == $archlinux ]]; then
    sudo mount -o remount,size=16G /tmp
    echo "The machine can freeze, be patient"
    git clone https://aur.archlinux.org/android-studio
    cd android-studio
    makepkg -si --noconfirm
    cd ..
    rm -rf android-studio
    sudo mkdir /opt/android-sdk
    sudo chown $username -R /opt/android-sdk
fi

if [[ $osname == $debian ]]; then
    sudo apt install lib32stdc++6 unzip -y
    sudo mkdir /tmp/android-studio
    sudo wget $link_android_studio -O /tmp/android-studio/android-studio.tar.gz
    sudo tar xvzf /tmp/android-studio/android-studio.tar.gz --directory /opt
    sudo rm -r /tmp/android-studio
    sudo bash -c "cat strings/launcher-android-studio > /usr/share/applications/android-studio.desktop"
    sudo mkdir /opt/android-sdk
    sudo chown $username -R /opt/android-sdk
fi

if [[ $osname == $fedora ]]; then
    sudo dnf install zlib.i686 ncurses-libs.i686 bzip2-libs.i686 -y
    sudo mkdir /tmp/android-studio
    sudo wget $link_android_studio -O /tmp/android-studio/android-studio.tar.gz
    sudo tar xvzf /tmp/android-studio/android-studio.tar.gz --directory /opt
    sudo rm -r /tmp/android-studio
    sudo bash -c "cat strings/launcher-android-studio > /usr/share/applications/android-studio.desktop"
    sudo mkdir /opt/android-sdk
    sudo chown $username -R /opt/android-sdk
fi

if [[ $osname == $ubuntu ]]; then
    sudo apt install lib32stdc++6 unzip -y
    sudo mkdir /tmp/android-studio
    sudo wget $link_android_studio -O /tmp/android-studio/android-studio.tar.gz
    sudo tar xvzf /tmp/android-studio/android-studio.tar.gz --directory /opt
    sudo rm -r /tmp/android-studio
    sudo bash -c "cat strings/launcher-android-studio > /usr/share/applications/android-studio.desktop"
    sudo mkdir /opt/android-sdk
    sudo chown $username -R /opt/android-sdk
fi
