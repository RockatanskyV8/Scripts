#!/bin/bash
source config.sh

if [[ $osname == "arch-linux" ]]; then
mkdir "/home/$username/.config"
mkdir "/home/$username/.config/fontconfig"
cp fonts.conf "/home/$username/.config/fontconfig"
sudo bash -c "cat >> /etc/profile.d/freetype2.sh <<- EOM
export FREETYPE_PROPERTIES=\"truetype:interpreter-version=40\"
EOM"
sudo ln -s /etc/fonts/conf.avail/70-no-bitmaps.conf /etc/fonts/conf.d
sudo ln -s /etc/fonts/conf.avail/10-sub-pixel-rgb.conf /etc/fonts/conf.d
sudo ln -s /etc/fonts/conf.avail/11-lcdfilter-default.conf /etc/fonts/conf.d
bash -c "cat >> /home/$username/.Xresources <<- EOM
Xft.antialias: true
Xft.hinting: true
Xft.rgba: rgb
Xft.autohint: false
Xft.hintstyle: hintslight
Xft.lcdfilter: lcddefault
EOM"
xrdb -merge /home/$username/.Xresources
fc-cache -fv
fi

if [[ $osname == "debian-9" ]]; then
mkdir "/home/$username/.config"
mkdir "/home/$username/.config/fontconfig"
cp fonts.conf "/home/$username/.config/fontconfig"

bash -c "cat >> /home/$username/.Xresources <<- EOM
Xft.antialias: true
Xft.hinting: true
Xft.rgba: rgb
Xft.autohint: false
Xft.hintstyle: hintslight
Xft.lcdfilter: lcddefault
EOM"
xrdb -merge /home/$username/.Xresources
fc-cache -fv
sudo dpkg-reconfigure fontconfig-config
sudo dpkg-reconfigure fontconfig
fi

if [[ $osname == "debian-sid" ]]; then
mkdir "/home/$username/.config"
mkdir "/home/$username/.config/fontconfig"
cp fonts.conf "/home/$username/.config/fontconfig"
bash -c "cat >> /home/$username/.Xresources <<- EOM
Xft.antialias: true
Xft.hinting: true
Xft.rgba: rgb
Xft.autohint: false
Xft.hintstyle: hintslight
Xft.lcdfilter: lcddefault
EOM"
xrdb -merge /home/$username/.Xresources
fc-cache -fv
sudo dpkg-reconfigure fontconfig-config
sudo dpkg-reconfigure fontconfig
fi

if [[ $osname == "fedora-29" ]]; then
sudo dnf copr enable dawid/better_fonts -y
sudo dnf install fontconfig-enhanced-defaults fontconfig-font-replacements -y
sudo bash -c "cat >> /etc/fonts/local.conf <<- EOM
<?xml version='1.0'?>
<!DOCTYPE fontconfig SYSTEM 'fonts.dtd'>
<fontconfig> <match target=\"font\"> <edit name=\"antialias\" mode=\"assign\"> <bool>true</bool> </edit> <edit name=\"autohint\" mode=\"assign\"> <bool>false</bool> </edit> <edit name=\"hinting\" mode=\"assign\"> <bool>true</bool> </edit> <edit name=\"hintstyle\" mode=\"assign\"> <const>hintslight</const> </edit> <edit name=\"lcdfilter\" mode=\"assign\"> <const>lcddefault</const> </edit> <edit name=\"rgba\" mode=\"assign\"> <const>rgb</const> </edit> <edit name=\"embeddedbitmap\" mode=\"assign\"> <bool>false</bool> </edit> </match> </fontconfig> 
EOM" 
fi

if [[ $osname == "ubuntu-18.04" ]]; then
$missing
fi
