#!/bin/bash
source config.sh

if [[ $osname == $archlinux ]]; then
sudo bash -c "cat >> /etc/profile.d/kwin.sh <<- EOM
#!/bin/sh
export KWIN_TRIPLE_BUFFER=1
EOM"
fi

if [[ $osname == $debian9 ]]; then
sudo bash -c "cat >> /etc/profile.d/kwin.sh <<- EOM
#!/bin/sh
export KWIN_TRIPLE_BUFFER=1
EOM"
fi

if [[ $osname == $debiansid ]]; then
sudo bash -c "cat >> /etc/profile.d/kwin.sh <<- EOM
#!/bin/sh
export KWIN_TRIPLE_BUFFER=1
EOM"
fi

if [[ $osname == $fedora29 ]]; then
sudo bash -c "cat >> /etc/profile.d/kwin.sh <<- EOM
#!/bin/sh
export KWIN_TRIPLE_BUFFER=1
EOM"
fi

if [[ $osname == $ubuntu1804 ]]; then
sudo bash -c "cat >> /etc/profile.d/kwin.sh <<- EOM
#!/bin/sh
export KWIN_TRIPLE_BUFFER=1
EOM"
fi
