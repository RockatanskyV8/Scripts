#!/bin/bash
username="your-username-here"

# system
add_fstab_lines="yes"
fstab_lines="# add your fstab extra lines here to be appended"
fix_kernel_audio="yes" # only when using 4.17 or later
fix_en_US_location_bug="yes" # needed only if installing another language
install_ufw_firewall="yes" # already installed by default, will only activate it
disable_mouse_acceleration="yes"
fix_disk_instensive_lags=="yes"
install_ms_fonts="yes"
install_kde_connect="yes" # already installed by default, will allow it in the firewall

# drivers
install_nvidia_340xx="yes"
virtualbox_guest_additions="yes"

# extra
install_someonewhocares_hosts_file="yes"
install_retroarch="yes"
install_redshift="yes"
install_samba="yes"
samba_lines="# add your fstab extra lines here to be appended"
install_syncthing="yes"
install_firefox="yes"
install_google_chrome="yes"
install_vlc="yes"
install_clementine="yes"
install_libreoffice="yes"
install_virtualbox="yes"
install_qbittorrent="yes"
install_gimp="yes"
install_kdenlive="yes"

# development
install_git="yes"
install_gitkraken="yes"
install_vscode="yes"
install_allegro5="yes"
install_arduino="yes"
install_eclipse="yes"
install_android_studio="yes"
install_pycharm_community="yes"
install_eyed3="yes"
install_xlsxwriter="yes"
install_nuitka="yes"
install_kivy="yes"
install_mysql_workbench="yes"
install_lamp_server="yes"
