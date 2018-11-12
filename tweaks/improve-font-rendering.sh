#!/bin/bash
source config.sh

if [[ $osname == "arch-linux" ]]; then
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
sudo bash -c "cat >> /etc/profile.d/freetype2.sh <<- EOM
export FREETYPE_PROPERTIES=\"truetype:interpreter-version=40\"
EOM"
fi

if [[ $osname == "debian-9" ]]; then
mkdir "/home/$username/.config"
mkdir "/home/$username/.config/fontconfig"
bash -c "cat >> /home/$username/.config/fontconfig/fonts.conf <<- EOM
<?xml version='1.0'?>
<!DOCTYPE fontconfig SYSTEM 'fonts.dtd'>
<fontconfig>
 <match target=\"font\">
  <edit mode=\"assign\" name=\"rgba\">
   <const>rgb</const>
  </edit>
 </match>
 <match target=\"font\">
  <edit mode=\"assign\" name=\"hinting\">
   <bool>true</bool>
  </edit>
 </match>
 <match target=\"font\">
  <edit mode=\"assign\" name=\"hintstyle\">
   <const>hintslight</const>
  </edit>
 </match>
 <match target=\"font\">
  <edit mode=\"assign\" name=\"antialias\">
   <bool>true</bool>
  </edit>
 </match>
</fontconfig>
EOM"

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
bash -c "cat >> /home/$username/.config/fontconfig/fonts.conf <<- EOM
<?xml version='1.0'?>
<!DOCTYPE fontconfig SYSTEM 'fonts.dtd'>
<fontconfig>
 <match target=\"font\">
  <edit mode=\"assign\" name=\"rgba\">
   <const>rgb</const>
  </edit>
 </match>
 <match target=\"font\">
  <edit mode=\"assign\" name=\"hinting\">
   <bool>true</bool>
  </edit>
 </match>
 <match target=\"font\">
  <edit mode=\"assign\" name=\"hintstyle\">
   <const>hintslight</const>
  </edit>
 </match>
 <match target=\"font\">
  <edit mode=\"assign\" name=\"antialias\">
   <bool>true</bool>
  </edit>
 </match>
</fontconfig>
EOM"

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
$missing
fi

if [[ $osname == "ubuntu-18.04" ]]; then
$missing
fi

if [[ $osname == "windows-10" ]]; then
$incompatible
fi
