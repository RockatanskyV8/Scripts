#!/bin/bash
source config.sh

link_apache_tomcat="http://ftp.unicamp.br/pub/apache/tomcat/tomcat-9/v9.0.27/bin/apache-tomcat-9.0.27.zip"

if [[ $osname == $archlinux ]]; then
    sudo mkdir /tmp/apache-tomcat
    sudo wget $link_apache_tomcat -O /tmp/apache-tomcat/apache-tomcat.zip
    sudo unzip /tmp/apache-tomcat/apache-tomcat.zip -d /opt
    sudo chown $username -R /opt/apache-tomcat-9.0.27
    sudo chmod +x -R /opt/apache-tomcat-9.0.27
    sudo rm -r /tmp/apache-tomcat
fi

if [[ $osname == $debian ]]; then
    sudo mkdir /tmp/apache-tomcat
    sudo wget $link_apache_tomcat -O /tmp/apache-tomcat/apache-tomcat.zip
    sudo unzip /tmp/apache-tomcat/apache-tomcat.zip -d /opt
    sudo chown $username -R /opt/apache-tomcat-9.0.27
    sudo chmod +x -R /opt/apache-tomcat-9.0.27
    sudo rm -r /tmp/apache-tomcat
fi

if [[ $osname == $fedora ]]; then
    sudo mkdir /tmp/apache-tomcat
    sudo wget $link_apache_tomcat -O /tmp/apache-tomcat/apache-tomcat.zip
    sudo unzip /tmp/apache-tomcat/apache-tomcat.zip -d /opt
    sudo chown $username -R /opt/apache-tomcat-9.0.27
    sudo chmod +x -R /opt/apache-tomcat-9.0.27
    sudo rm -r /tmp/apache-tomcat
fi

if [[ $osname == $ubuntu ]]; then
    sudo mkdir /tmp/apache-tomcat
    sudo wget $link_apache_tomcat -O /tmp/apache-tomcat/apache-tomcat.zip
    sudo unzip /tmp/apache-tomcat/apache-tomcat.zip -d /opt
    sudo chown $username -R /opt/apache-tomcat-9.0.27
    sudo chmod +x -R /opt/apache-tomcat-9.0.27
    sudo rm -r /tmp/apache-tomcat
fi
