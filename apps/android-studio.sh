#!/bin/bash
source config.sh

link_android_studio="https://dl.google.com/dl/android/studio/ide-zips/3.1.0.16/android-studio-ide-173.4670197-linux.zip"

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

if [[ $osname == $debianstable ]]; then
    sudo apt install lib32stdc++6 unzip -y
    sudo mkdir /tmp/android-studio
    sudo wget $link_android_studio -O /tmp/android-studio/android-studio.zip
    sudo unzip /tmp/android-studio/android-studio.zip -d /opt
    sudo rm -r /tmp/android-studio
    sudo bash -c "cat strings/launcher-android-studio > /usr/share/applications/android-studio.desktop"
    sudo mkdir /opt/android-sdk
    sudo chown $username -R /opt/android-sdk
fi

if [[ $osname == $debiansid ]]; then
    sudo apt install lib32stdc++6 unzip -y
    sudo mkdir /tmp/android-studio
    sudo wget $link_android_studio -O /tmp/android-studio/android-studio.zip
    sudo unzip /tmp/android-studio/android-studio.zip -d /opt
    sudo rm -r /tmp/android-studio
    sudo bash -c "cat strings/launcher-android-studio > /usr/share/applications/android-studio.desktop"
    sudo mkdir /opt/android-sdk
    sudo chown $username -R /opt/android-sdk
fi

if [[ $osname == $fedora ]]; then
    sudo mkdir /tmp/android-studio
    sudo wget $link_android_studio -O /tmp/android-studio/android-studio.zip
    sudo unzip /tmp/android-studio/android-studio.zip -d /opt
    sudo rm -r /tmp/android-studio
    sudo bash -c "cat strings/launcher-android-studio > /usr/share/applications/android-studio.desktop"
    sudo mkdir /opt/android-sdk
    sudo chown $username -R /opt/android-sdk
fi

if [[ $osname == $ubuntults ]]; then
    sudo apt install lib32stdc++6 unzip -y
    sudo mkdir /tmp/android-studio
    sudo wget $link_android_studio -O /tmp/android-studio/android-studio.zip
    sudo unzip /tmp/android-studio/android-studio.zip -d /opt
    sudo rm -r /tmp/android-studio
    sudo bash -c "cat strings/launcher-android-studio > /usr/share/applications/android-studio.desktop"
    sudo mkdir /opt/android-sdk
    sudo chown $username -R /opt/android-sdk
    sudo apt install qemu-kvm -y
    sudo adduser $username kvm
fi
