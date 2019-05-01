#!/bin/bash

# basic information about the system
username=$USER
hostname=$HOSTNAME
osname=$(IFS="=" read -ra ADDR <<< $(cat /etc/os-release | grep PRETTY_NAME); echo ${ADDR[-1]} | cut -d'"' -f 2)

# should match /etc/os-release PRETTY_NAME string
debianstable="Debian GNU/Linux 9 (stretch)"
debiansid="Debian GNU/Linux 9 buster/sid"
ubuntults="Ubuntu 18.04.2 LTS"
fedora="Fedora 30 (Workstation Edition)"
archlinux="Arch Linux"

# what runs on these conditions
incompatible="echo This is incompatible with $osname"
missing="echo This is not implemented for $osname yet"

# the lines here will be appended to these files
crypttab_lines=""
fstab_lines=""
samba_lines=""

# links
link_android_studio="https://dl.google.com/dl/android/studio/ide-zips/3.1.0.16/android-studio-ide-173.4670197-linux.zip"
link_apache_tomcat="http://ftp.unicamp.br/pub/apache/tomcat/tomcat-9/v9.0.17/bin/apache-tomcat-9.0.17.zip"
link_eclipse="http://eclipse.c3sl.ufpr.br/technology/epp/downloads/release/photon/R/eclipse-java-photon-R-linux-gtk-x86_64.tar.gz"
link_freetube="https://github.com/FreeTubeApp/FreeTube/releases/download/v0.5.3-beta/FreeTube-linux-x64.zip"
link_gitkraken_libssl1_0="http://ftp.br.debian.org/debian/pool/main/o/openssl/libssl1.0.0_1.0.1t-1+deb8u8_amd64.deb"
link_gitkraken_deb="https://release.gitkraken.com/linux/gitkraken-amd64.deb"
link_gitkraken_targz="https://release.gitkraken.com/linux/gitkraken-amd64.tar.gz"
link_girkraken_icon="http://img.informer.com/icons_mac/png/128/422/422255.png"
link_google_chrome_deb="https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb"
link_google_chrome_rpm="https://dl.google.com/linux/direct/google-chrome-stable_current_x86_64.rpm"
link_protonmail_desktop="https://github.com/protonmail-desktop/application/releases/download/v1.0.0-beta.7/protonmail-desktop-1.0.0-beta.7-x86_64.AppImage"
link_protonmail_desktop_icon="https://raw.githubusercontent.com/protonmail-desktop/application/master/app/static/Icon.png"
link_pycharm="https://download.jetbrains.com/python/pycharm-community-2018.1.2.tar.gz"
link_virtualbox_key="https://www.virtualbox.org/download/oracle_vbox_2016.asc"
link_virtualbox_ext="https://download.virtualbox.org/virtualbox/5.2.16/Oracle_VM_VirtualBox_Extension_Pack-5.2.16.vbox-extpack"
link_vmware="http://download3.vmware.com/software/player/file/VMware-Player-15.0.4-12990004.x86_64.bundle"
link_vmware_workstation="https://download3.vmware.com/software/wkst/file/VMware-Workstation-Full-15.0.4-12990004.x86_64.bundle"
link_vscode_key="https://packages.microsoft.com/keys/microsoft.asc"
link_vscode_rpm="https://packages.microsoft.com/yumrepos/vscode/code-1.30.0-1544567256.el7.x86_64.rpm"
link_mysql_workbench_rpm="https://dev.mysql.com/get/Downloads/MySQLGUITools/mysql-workbench-community-8.0.16-1.fc30.x86_64.rpm"

link_someonewhocares_hosts="http://someonewhocares.org/hosts/hosts"
