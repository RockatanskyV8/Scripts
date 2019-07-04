#!/bin/bash
source config.sh

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
    sudo bash -c "cat >> /usr/share/applications/jetbrains-studio.desktop <<- EOM
    [Desktop Entry]
    Version=1.0
    Type=Application
    Name=Android Studio
    Icon=/opt/android-studio/bin/studio.png
    Exec=\"/opt/android-studio/bin/studio.sh\" %f
    Comment=The Drive to Develop
    Categories=Development;IDE;
    Terminal=false
    StartupWMClass=jetbrains-studio
    EOM"
    sudo mkdir /opt/android-sdk
    sudo chown $username -R /opt/android-sdk
fi

if [[ $osname == $debiansid ]]; then
    sudo apt install lib32stdc++6 unzip -y
    sudo mkdir /tmp/android-studio
    sudo wget $link_android_studio -O /tmp/android-studio/android-studio.zip
    sudo unzip /tmp/android-studio/android-studio.zip -d /opt
    sudo rm -r /tmp/android-studio
    sudo bash -c "cat >> /usr/share/applications/jetbrains-studio.desktop <<- EOM
    [Desktop Entry]
    Version=1.0
    Type=Application
    Name=Android Studio
    Icon=/opt/android-studio/bin/studio.png
    Exec=\"/opt/android-studio/bin/studio.sh\" %f
    Comment=The Drive to Develop
    Categories=Development;IDE;
    Terminal=false
    StartupWMClass=jetbrains-studio
    EOM"
    sudo mkdir /opt/android-sdk
    sudo chown $username -R /opt/android-sdk
fi

if [[ $osname == $fedora ]]; then
    sudo mkdir /tmp/android-studio
    sudo wget $link_android_studio -O /tmp/android-studio/android-studio.zip
    sudo unzip /tmp/android-studio/android-studio.zip -d /opt
    sudo rm -r /tmp/android-studio
    sudo bash -c "cat >> /usr/share/applications/jetbrains-studio.desktop <<- EOM
    [Desktop Entry]
    Version=1.0
    Type=Application
    Name=Android Studio
    Icon=/opt/android-studio/bin/studio.png
    Exec=\"/opt/android-studio/bin/studio.sh\" %f
    Comment=The Drive to Develop
    Categories=Development;IDE;
    Terminal=false
    StartupWMClass=jetbrains-studio
    EOM"
    sudo mkdir /opt/android-sdk
    sudo chown $username -R /opt/android-sdk
fi

if [[ $osname == $ubuntults ]]; then
    sudo apt install lib32stdc++6 unzip -y
    sudo mkdir /tmp/android-studio
    sudo wget $link_android_studio -O /tmp/android-studio/android-studio.zip
    sudo unzip /tmp/android-studio/android-studio.zip -d /opt
    sudo rm -r /tmp/android-studio
    sudo bash -c "cat >> /usr/share/applications/jetbrains-studio.desktop <<- EOM
    [Desktop Entry]
    Version=1.0
    Type=Application
    Name=Android Studio
    Icon=/opt/android-studio/bin/studio.png
    Exec=\"/opt/android-studio/bin/studio.sh\" %f
    Comment=The Drive to Develop
    Categories=Development;IDE;
    Terminal=false
    StartupWMClass=jetbrains-studio
    EOM"
    sudo mkdir /opt/android-sdk
    sudo chown $username -R /opt/android-sdk
    sudo apt install qemu-kvm -y
    sudo adduser $username kvm
fi
