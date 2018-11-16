#!/bin/bash

# your linux user must have access to sudo

# windows 10 not tested yet, idk if it will work using bash and powershell

# uncomment the lines you dont want to install with a '#'

# see the compatibility sheet for what commands work on what distros
# most of the time unsupported commands will simply not work

# some packages are taken for granted by the scripts and will be installed in pre-configure.sh
# this includes:
# wget, python 3, pip3, git, fuse, unzip for all distros
# ufw for all distros except fedora-29
# pakku for arch-linux
# chocolatey for windows-10
#pre-configure.sh

# this will install the DE with the minimal packages possible
# must be used with a terminal only installed os
# uncomment this for arch
#apps/kde-plasma.sh
#apps/gnome-shell.sh

# if you normally installed the distro this will remove bloatware
# not working atm
#tweaks/kde-cleaner.sh
#tweaks/gnome-cleaner.sh

# general system tweaks
tweaks/add-crypttab-lines.sh
tweaks/add-fstab-lines.sh
tweaks/improve-font-rendering.sh
tweaks/install-extra-fonts.sh
tweaks/install-someonewhocares-hosts.sh
tweaks/fix-sudden-volume-spikes.sh
tweaks/disable-mouse-acceleration.sh
#tweaks/install-nvidia-340xx.sh
tweaks/fix-nvidia-tearing-on-kde.sh
tweaks/install-codecs.sh
#tweaks/create-swap-file.sh # this should not be run from here, see the file for more info

# basic apps for kde
apps/ark.sh
apps/kdeconnect.sh
apps/kcalc.sh
apps/okular.sh
apps/spectacle.sh
apps/gwenview.sh
apps/partitionmanager.sh

# basic apps for gnome
#apps/

# general apps
apps/syncthing.sh
apps/firefox.sh
apps/google-chrome.sh
apps/clementine.sh
apps/libreoffice.sh
apps/vlc.sh
apps/virtualbox.sh
apps/qemu-kvm.sh
apps/qbittorrent.sh
apps/gimp.sh
apps/kdenlive.sh
apps/minitube.sh
apps/steam.sh
apps/freetube.sh
apps/vmware-player.sh
#apps/vmware-workstation.sh
apps/protonmail-desktop.sh
apps/retroarch.sh
apps/samba.sh
apps/7-zip.sh
apps/origin.sh
apps/msi-afterburner.sh

# development tools
apps/git.sh
apps/gitkraken.sh
apps/vscode.sh
apps/allegro.sh
apps/netbeans.sh
apps/arduino.sh
apps/eclipse.sh
apps/android-studio.sh
apps/python.sh
apps/pycharm-community.sh
apps/python-eyed3.sh
apps/python-xlsxwriter.sh
apps/python-nuitka.sh
apps/python-youtube-dl.sh
apps/python-kivy.sh
apps/mysql-workbench.sh
apps/lamp-stack.sh
apps/apache-tomcat.sh
apps/xampp.sh
apps/vscommunity.sh
