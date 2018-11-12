#!/bin/bash
source config.sh

if [[ $osname == "arch-linux" ]]; then
sudo mount -o remount,size=16G /tmp
echo "The machine can freeze, be patient"
sudo pakku -S android-studio
sudo mkdir /opt/android-sdk
sudo chown $username -R /opt/android-sdk
fi

if [[ $osname == "debian-9" ]]; then
sudo apt install lib32stdc++6 unzip -y
sudo mkdir /tmp/android-studio
sudo wget https://dl.google.com/dl/android/studio/ide-zips/3.1.0.16/android-studio-ide-173.4670197-linux.zip -P /tmp/android-studio
sudo unzip /tmp/android-studio/android-studio-ide-173.4670197-linux.zip -d /opt
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

if [[ $osname == "debian-sid" ]]; then
sudo apt install lib32stdc++6 unzip -y
sudo mkdir /tmp/android-studio
sudo wget https://dl.google.com/dl/android/studio/ide-zips/3.1.0.16/android-studio-ide-173.4670197-linux.zip -P /tmp/android-studio
sudo unzip /tmp/android-studio/android-studio-ide-173.4670197-linux.zip -d /opt
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

if [[ $osname == "fedora-29" ]]; then
$missing
fi

if [[ $osname == "ubuntu-18.04" ]]; then
sudo apt install lib32stdc++6 unzip -y
sudo mkdir /tmp/android-studio
sudo wget https://dl.google.com/dl/android/studio/ide-zips/3.1.0.16/android-studio-ide-173.4670197-linux.zip -P /tmp/android-studio
sudo unzip /tmp/android-studio/android-studio-ide-173.4670197-linux.zip -d /opt
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

if [[ $osname == "windows-10" ]]; then
choco install androidstudio --ignorechecksum -y
fi
