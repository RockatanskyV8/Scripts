#!/bin/bash
source config.sh

if [[ $osname == $archlinux ]]; then
    sudo pacman -S ttf-dejavu ttf-droid ttf-croscore ttf-roboto noto-fonts ttf-liberation ttf-ubuntu-font-family --noconfirm
    git clone https://aur.archlinux.org/ttf-ms-fonts
    cd ttf-ms-fonts
    makepkg -si --noconfirm
    cd ..
    rm -rf ttf-ms-fonts
fi

if [[ $osname == $debian ]]; then
    sudo apt install ttf-mscorefonts-installer -y
    sudo apt install fontconfig fontconfig-config fonts-cantarell fonts-crosextra-caladea fonts-crosextra-carlito fonts-dejavu fonts-dejavu-core fonts-dejavu-extra fonts-droid-fallback fonts-freefont-ttf fonts-liberation fonts-linuxlibertine fonts-noto-mono fonts-opensymbol fonts-sil-gentium fonts-sil-gentium-basic fonts-arphic-ukai fonts-arphic-uming fonts-beng fonts-beng-extra fonts-dejavu-core fonts-deva fonts-deva-extra fonts-droid-fallback fonts-freefont-ttf fonts-gargi fonts-gubbi fonts-gujr fonts-gujr-extra fonts-guru fonts-guru-extra fonts-indic fonts-kacst fonts-kacst-one fonts-kalapi fonts-knda fonts-lao fonts-liberation fonts-liberation2 fonts-lklug-sinhala fonts-lohit-beng-assamese fonts-lohit-beng-bengali fonts-lohit-deva fonts-lohit-gujr fonts-lohit-guru fonts-lohit-knda fonts-lohit-mlym fonts-lohit-orya fonts-lohit-taml fonts-lohit-taml-classical fonts-lohit-telu fonts-mlym fonts-nakula fonts-navilu fonts-noto-cjk fonts-noto-mono fonts-opensymbol fonts-orya fonts-orya-extra fonts-pagul fonts-sahadeva fonts-samyak-deva fonts-samyak-gujr fonts-samyak-mlym fonts-samyak-taml fonts-sarai fonts-sil-abyssinica fonts-sil-padauk fonts-taml fonts-telu fonts-telu-extra fonts-thai-tlwg fonts-tibetan-machine fonts-tlwg-garuda fonts-tlwg-garuda-ttf fonts-tlwg-kinnari fonts-tlwg-kinnari-ttf fonts-tlwg-laksaman fonts-tlwg-laksaman-ttf fonts-tlwg-loma fonts-tlwg-loma-ttf fonts-tlwg-mono fonts-tlwg-mono-ttf fonts-tlwg-norasi fonts-tlwg-norasi-ttf fonts-tlwg-purisa fonts-tlwg-purisa-ttf fonts-tlwg-sawasdee fonts-tlwg-sawasdee-ttf fonts-tlwg-typewriter fonts-tlwg-typewriter-ttf fonts-tlwg-typist fonts-tlwg-typist-ttf fonts-tlwg-typo fonts-tlwg-typo-ttf fonts-tlwg-umpush fonts-tlwg-umpush-ttf fonts-tlwg-waree fonts-tlwg-waree-ttf ttf-ubuntu-font-family -y
fi

if [[ $osname == $fedora ]]; then
    #sudo dnf install http://olea.org/paquetes-rpm//msttcore-fonts-2.0-6.noarch.rpm -y
    # I really dont like the noto fonts available on fedora, so this will install the arch linux version manually
    #sudo mkdir /tmp/noto-fonts
    #sudo wget https://ia802808.us.archive.org/27/items/archlinux_pkg_noto-fonts/noto-fonts-20190926-2-any.pkg.tar.xz -O /tmp/noto-fonts/noto-fonts.tar.xz
    #sudo tar xf /tmp/noto-fonts/noto-fonts.tar.xz --directory /tmp/noto-fonts
    #sudo cp -r /tmp/noto-fonts/etc/fonts/conf.avail/* /etc/fonts/conf.d
    #sudo cp -r /tmp/noto-fonts/usr/share/fonts/noto /usr/share/fonts
    #sudo rm -r /tmp/noto-fonts
    sudo unzip assets/fonts.zip -d /usr/share/fonts
fi

if [[ $osname == $ubuntu ]]; then
    $missing
fi
