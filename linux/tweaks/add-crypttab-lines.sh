#!/bin/bash
source config.sh

if [[ $osname == $archlinux ]]; then
    sudo bash -c "cat >> /etc/crypttab <<- EOM
    $crypttab_lines
    EOM"
fi

if [[ $osname == $debianstable ]]; then
    sudo bash -c "cat >> /etc/crypttab <<- EOM
    $crypttab_lines
    EOM"
fi

if [[ $osname == $debiansid ]]; then
    sudo bash -c "cat >> /etc/crypttab <<- EOM
    $crypttab_lines
    EOM"
fi

if [[ $osname == $fedora ]]; then
    sudo bash -c "cat >> /etc/crypttab <<- EOM
    $crypttab_lines
    EOM"
fi

if [[ $osname == $ubuntults ]]; then
    sudo bash -c "cat >> /etc/crypttab <<- EOM
    $crypttab_lines
    EOM"
fi
