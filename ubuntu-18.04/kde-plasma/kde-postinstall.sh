#!/bin/bash
source config.sh

# updates the system repos
sudo apt update

# removes any leftover packages
sudo apt autoremove -y

# system -----------------------------------------------------------------------

# adds the fstab lines
if [[ $add_fstab_lines == "yes" ]]; then
sudo bash -c "cat >> /etc/fstab <<- EOM
$fstab_lines
EOM"
fi

# kernel parameter that fixes audio
if [[ $fix_kernel_audio == "yes" ]]; then
sudo sed -i 's/GRUB_CMDLINE_LINUX_DEFAULT=\"quiet\"/GRUB_CMDLINE_LINUX_DEFAULT=\"quiet snd_hda_intel\.power_save=0\"/' /etc/default/grub
sudo update-grub
fi

# fixes en-us language
if [[ $fix_en_US_location_bug == "yes" ]]; then
sudo bash -c "cat >> /etc/locale.gen <<- EOM
en_US.UTF-8 UTF-8
EOM"
sudo locale-gen
fi

# installs ufw firewall
if [[ $install_ufw_firewall == "yes" ]]; then
sudo apt install ufw -y
sudo ufw enable
sudo ufw default deny incoming
sudo ufw default allow outgoing
fi

# disables mouse acceleration 
if [[ $disable_mouse_acceleration == "yes" ]]; then
sudo mkdir /etc/X11/xorg.conf.d
sudo bash -c "cat >> /etc/X11/xorg.conf.d/50-mouse-acceleration.conf <<- EOM
Section \"InputClass\"
    Identifier \"My Mouse\"
    Driver \"libinput\"
    MatchIsPointer \"yes\"
    Option \"AccelProfile\" \"flat\"
EndSection
EOM"
fi

#fixes system lags when doing disk intensive tasks
if [[ $fix_disk_instensive_lags == "yes" ]]; then
sudo bash -c "cat >> /etc/sysctl.conf <<- EOM
vm.dirty_bytes = 250000000
EOM"
sudo sysctl -p
fi

# installs Microsoft fonts
if [[ $install_ms_fonts == "yes" ]]; then
sudo apt install ttf-mscorefonts-installer -y
fi

# installs kde connect
if [[ $install_kde_connect == "yes" ]]; then
sudo apt install kdeconnect -y
sudo bash -c "cat >> /etc/ufw/applications.d/kdeconnect <<- EOM
[kdeconnect]
title=KDE Connect
description=KDE Connect
ports=1714:1764/tcp|1714:1764/udp
EOM"
sudo ufw allow kdeconnect
sudo ufw reload
fi

# drivers ----------------------------------------------------------------------

# installs Nvidia legacy drivers for G94
if [[ $install_nvidia_340xx == "yes" ]]; then
sudo apt install linux-headers-$(uname -r) -y
sudo apt install nvidia-340 -y

# fixes vsync issues
sudo bash -c "cat >> /etc/profile.d/kwin.sh <<- EOM
#!/bin/sh
export KWIN_TRIPLE_BUFFER=1
EOM"
fi

# installs virtualbox guest additions 
if [[ $virtualbox_guest_additions == "yes" ]]; then
sudo apt install linux-headers-$(uname -r) build-essential -y
sudo mkdir /tmp/vbox-iso
sudo wget http://download.virtualbox.org/virtualbox/5.2.16/VBoxGuestAdditions_5.2.16.iso -P /tmp/vbox-iso
sudo 7z x /tmp/vbox-iso/VBoxGuestAdditions_5.2.16.iso -o/tmp/vbox-iso
sudo chmod +x /tmp/vbox-iso/VBoxLinuxAdditions.run
sudo /tmp/vbox-iso/VBoxLinuxAdditions.run
sudo rm -rf /tmp/vbox-iso
sudo adduser $username vboxsf
fi

# extra ----------------------------------------------------------------------

# sets /etc/hosts file
if [[ $install_someonewhocares_hosts_file == "yes" ]]; then
sudo wget -q http://someonewhocares.org/hosts/hosts -O /etc/hosts
fi

# installs RetroArch
if [[ $install_retroarch == "yes" ]]; then
sudo apt install retroarch -y
sudo apt install libretro-* -y
sudo apt purge gnome-games-app -y
sudo adduser $username input
fi

# installs redshift
if [[ $install_redshift == "yes" ]]; then
sudo apt install redshift plasma-applet-redshift-control -y
fi

# installs samba
if [[ $install_samba == "yes" ]]; then
sudo apt install samba -y
sudo systemctl enable smbd
sudo smbpasswd -a $username
sudo bash -c "cat >> /etc/samba/smb.conf <<- EOM
$samba_lines
EOM"
sudo ufw allow samba
sudo ufw reload
fi

# installs Syncthing
if [[ $install_syncthing == "yes" ]]; then
sudo apt install syncthing -y
sudo systemctl enable syncthing@$username.service
sudo bash -c "cat >> /etc/ufw/applications.d/syncthing-server <<- EOM
[syncthing]
title=Syncthing
description=Sycthing file synchronisation
ports=22000/tcp|21027/udp
EOM"
sudo ufw allow syncthing
sudo ufw reload
fi

# installs Firefox
if [[ $install_firefox == "yes" ]]; then
sudo apt install firefox -y
fi

# installs Google Chrome
if [[ $install_google_chrome == "yes" ]]; then
sudo apt install libappindicator3-1 -y
sudo mkdir /tmp/google-chrome
sudo wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -P /tmp/google-chrome
sudo dpkg -i /tmp/google-chrome/google-chrome-stable_current_amd64.deb
sudo rm -r /tmp/google-chrome
fi

# installs VLC
if [[ $install_vlc == "yes" ]]; then
sudo apt install vlc -y
fi

# installs Clementine
if [[ $install_clementine == "yes" ]]; then
sudo apt install clementine -y
fi

# installs LibreOffice
if [[ $install_libreoffice == "yes" ]]; then
sudo apt install libreoffice libreoffice-kde -y
fi

# installs Virtualbox
if [[ $install_virtualbox == "yes" ]]; then
sudo apt install dkms -y
sudo apt install build-essential -y
sudo apt install linux-headers-$(uname -r) -y
sudo apt install virtualbox -y
sudo gpasswd -a $username vboxusers
sudo apt install virtualbox-ext-pack -y
fi

# installs QBitTorrent
if [[ $install_qbittorrent == "yes" ]]; then
sudo apt install qbittorrent -y
fi

# installs GIMP
if [[ $install_gimp == "yes" ]]; then
sudo apt install gimp -y
fi

# installs Kdenlive
if [[ $install_kdenlive == "yes" ]]; then
sudo apt install kdenlive -y
fi

# installs Steam
if [[ $install_steam == "yes" ]]; then
sudo apt install steam -y
sudo apt install xboxdrv -y
fi

# development -----------------------------------------------------------------

# installs git
if [[ $install_git == "yes" ]]; then
sudo apt install git -y
fi

# installs GitKraken
if [[ $install_gitkraken == "yes" ]]; then
sudo apt install gconf2 gvfs-bin -y
sudo mkdir /tmp/gitkraken
sudo wget https://release.gitkraken.com/linux/gitkraken-amd64.deb -P /tmp/gitkraken
sudo dpkg -i /tmp/gitkraken/gitkraken-amd64.deb
sudo rm -r /tmp/gitkraken
fi

# installs Microsoft Visual Studio Code
if [[ $install_vscode == "yes" ]]; then
sudo mkdir /tmp/code
sudo wget https://packages.microsoft.com/keys/microsoft.asc -P /tmp/code
sudo apt-key add /tmp/code/microsoft.asc
sudo rm -r /tmp/code
sudo bash -c "cat >> /etc/apt/sources.list.d/vscode.list <<- EOM
deb [arch=amd64] http://packages.microsoft.com/repos/vscode stable main
EOM"
sudo apt update
sudo apt install code -y
fi
    
# installs Allegro 5
if [[ $install_allegro5 == "yes" ]]; then
sudo apt install liballegro5-dev -y
fi

# installs Arduino IDE
if [[ $install_arduino == "yes" ]]; then
sudo apt install arduino -y
sudo adduser $username dialout
fi

# installs Eclipse
if [[ $install_eclipse == "yes" ]]; then
sudo apt install openjdk-8-jdk -y
sudo mkdir /tmp/eclipse
sudo wget http://eclipse.c3sl.ufpr.br/technology/epp/downloads/release/photon/R/eclipse-java-photon-R-linux-gtk-x86_64.tar.gz -P /tmp/eclipse
sudo tar -zxvf /tmp/eclipse/eclipse-java-photon-R-linux-gtk-x86_64.tar.gz -C /usr/
sudo wget http://eclipse.c3sl.ufpr.br/technology/epp/downloads/release/photon/R/eclipse-jee-photon-R-linux-gtk-x86_64.tar.gz -P /tmp/eclipse
sudo tar -zxvf /tmp/eclipse/eclipse-jee-photon-R-linux-gtk-x86_64.tar.gz -C /usr/
sudo wget http://eclipse.c3sl.ufpr.br/technology/epp/downloads/release/photon/R/eclipse-cpp-photon-R-linux-gtk-x86_64.tar.gz -P /tmp/eclipse
sudo tar -zxvf /tmp/eclipse/eclipse-cpp-photon-R-linux-gtk-x86_64.tar.gz -C /usr/
sudo rm -r /tmp/eclipse
sudo ln -s /usr/eclipse/eclipse /usr/bin/eclipse
sudo bash -c "cat >> /usr/share/applications/eclipse.desktop <<- EOM
[Desktop Entry]
Encoding=UTF-8
Name=Eclipse 4.7
Comment=Eclipse
Exec=/usr/bin/eclipse
Icon=/usr/eclipse/icon.xpm
Categories=Development;IDE;
Terminal=false  
Type=Application   
StartupNotify=false
EOM"
sudo update-java-alternatives --jre-headless --jre --set java-1.8.0-openjdk-amd64
fi

# installs Android Studio
if [[ $install_android_studio == "yes" ]]; then
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

# installs Pycharm Community
if [[ $install_pycharm_community == "yes" ]]; then
sudo apt install python3-pip -y
sudo mkdir /tmp/pycharm-community
sudo wget https://download.jetbrains.com/python/pycharm-community-2018.1.2.tar.gz -P /tmp/pycharm-community
sudo tar xvzf /tmp/pycharm-community/pycharm-community-2018.1.2.tar.gz --directory /opt
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
    
# installs eyed3
if [[ $install_eyed3 == "yes" ]]; then
sudo pip3 install eyed3
fi

# installs xlsxwriter
if [[ $install_xlsxwriter == "yes" ]]; then
sudo pip3 install xlsxwriter
fi

# installs Nuitka
if [[ $install_nuitka == "yes" ]]; then
sudo pip3 install nuitka
fi

# installs Kivy
if [[ $install_kivy == "yes" ]]; then
sudo apt install git -y
sudo pip3 install cython
sudo pip3 install pygame
sudo pip3 install git+https://github.com/kivy/kivy.git@master
fi

# installs MySQL Workbench
if [[ $install_mysql_workbench == "yes" ]]; then
sudo apt install mysql-workbench -y
fi

# installs lamp-server
if [[ $install_lamp_server == "yes" ]]; then
# installs MariaDB Server
sudo apt install mariadb-client -y
sudo apt install mariadb-server -y

# installs PHP 7.0 and MySQL connector
sudo apt install php7.0 -y
sudo apt install php7.0-mysql -y

# installs Apache and PHP plugin for Apache
sudo apt install apache2 -y
sudo apt install libapache2-mod-php7.0 -y
fi

# installs Apache Tomcat
if [[ $install_apache_tomcat == "yes" ]]; then
sudo apt install unzip -y
sudo mkdir /tmp/tomcat
sudo wget http://ftp.unicamp.br/pub/apache/tomcat/tomcat-9/v9.0.11/bin/apache-tomcat-9.0.11.zip -P /tmp/tomcat
sudo unzip /tmp/tomcat/apache-tomcat-9.0.11.zip -d /opt
sudo chown $username -R /opt/apache-tomcat-9.0.11
sudo chmod +x -R /opt/apache-tomcat-9.0.11
sudo rm -r /tmp/tomcat
fi

# reboots the system
sudo reboot
