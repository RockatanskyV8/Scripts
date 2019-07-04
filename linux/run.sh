#!/bin/bash

# your linux user must have access to sudo

# uncomment the lines you want to install

# see the compatibility sheet for what commands work on what distros
# most of the time unsupported commands will simply not work

# some packages are taken for granted by the scripts and will be installed in pre-configure.sh
# ./pre-configure.sh

# desktop environments
# apps/kde-plasma.sh
# apps/gnome-shell.sh

# removes some unnecessary packages from the desktop environment install
# tweaks/kde-cleaner.sh
# tweaks/gnome-cleaner.sh

# general system tweaks
# tweaks/add-crypttab-lines.sh
# tweaks/add-fstab-lines.sh
# tweaks/improve-font-rendering.sh
# tweaks/install-extra-fonts.sh
# tweaks/install-someonewhocares-hosts.sh
# tweaks/fix-sudden-volume-spikes.sh
# tweaks/disable-xorg-mouse-acceleration.sh
# tweaks/install-nvidia-340xx.sh
# tweaks/fix-nvidia-tearing-on-kde.sh
# tweaks/install-codecs.sh
# tweaks/install-vulkan-radeon.sh

# basic apps for kde
# apps/ark.sh
# apps/kdeconnect.sh
# apps/kcalc.sh
# apps/okular.sh
# apps/spectacle.sh
# apps/gwenview.sh
# apps/partitionmanager.sh

# basic apps for gnome
# apps/gnome-tweak-tool.sh

# general apps
# apps/syncthing.sh
# apps/firefox.sh
# apps/google-chrome.sh
# apps/clementine.sh
# apps/libreoffice.sh
# apps/vlc.sh
# apps/virtualbox.sh
# apps/qemu-kvm.sh
# apps/qbittorrent.sh
# apps/gimp.sh
# apps/kdenlive.sh
# apps/minitube.sh
# apps/steam.sh
# apps/lutris.sh
# apps/freetube.sh
# apps/vmware-player.sh
# apps/vmware-workstation.sh
# apps/protonmail-desktop.sh
# apps/retroarch.sh
# apps/samba.sh
# apps/keepassxc.sh
# apps/openssh.sh

# development tools
# apps/git.sh
# apps/gitkraken.sh
# apps/vscode.sh
# apps/allegro.sh
# apps/netbeans.sh
# apps/arduino.sh
# apps/eclipse.sh
# apps/android-studio.sh
# apps/python.sh
# apps/pycharm-community.sh
# apps/python-eyed3.sh
# apps/python-xlsxwriter.sh
# apps/python-nuitka.sh
# apps/python-youtube-dl.sh
# apps/python-kivy.sh
# apps/mysql-workbench.sh
# apps/lamp-stack.sh
# apps/apache-tomcat.sh
