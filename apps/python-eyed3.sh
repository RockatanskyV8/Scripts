#!/bin/bash
source config.sh

if [[ $osname == $archlinux ]]; then
    pip3 install --user python-magic eyed3
fi

if [[ $osname == $debian ]]; then
    pip3 install --user python-magic eyed3
fi

if [[ $osname == $fedora ]]; then
    pip3 install --user python-magic eyed3
fi

if [[ $osname == $ubuntu ]]; then
    pip3 install --user python-magic eyed3
fi
