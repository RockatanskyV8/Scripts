#!/bin/bash
source config.sh

if [[ $osname == $archlinux ]]; then
sudo mkdir /tmp/apache-tomcat
sudo wget $link_apache_tomcat -O /tmp/apache-tomcat/apache-tomcat.zip
sudo unzip /tmp/apache-tomcat/apache-tomcat.zip -d /opt
sudo chown $username -R /opt/apache-tomcat-9.0.21
sudo chmod +x -R /opt/apache-tomcat-9.0.21
sudo rm -r /tmp/apache-tomcat
fi

if [[ $osname == $debianstable ]]; then
sudo mkdir /tmp/apache-tomcat
sudo wget $link_apache_tomcat -O /tmp/apache-tomcat/apache-tomcat.zip
sudo unzip /tmp/apache-tomcat/apache-tomcat.zip -d /opt
sudo chown $username -R /opt/apache-tomcat-9.0.21
sudo chmod +x -R /opt/apache-tomcat-9.0.21
sudo rm -r /tmp/apache-tomcat
fi

if [[ $osname == $debiansid ]]; then
sudo mkdir /tmp/apache-tomcat
sudo wget $link_apache_tomcat -O /tmp/apache-tomcat/apache-tomcat.zip
sudo unzip /tmp/apache-tomcat/apache-tomcat.zip -d /opt
sudo chown $username -R /opt/apache-tomcat-9.0.21
sudo chmod +x -R /opt/apache-tomcat-9.0.21
sudo rm -r /tmp/apache-tomcat
fi

if [[ $osname == $fedora ]]; then
sudo mkdir /tmp/apache-tomcat
sudo wget $link_apache_tomcat -O /tmp/apache-tomcat/apache-tomcat.zip
sudo unzip /tmp/apache-tomcat/apache-tomcat.zip -d /opt
sudo chown $username -R /opt/apache-tomcat-9.0.21
sudo chmod +x -R /opt/apache-tomcat-9.0.21
sudo rm -r /tmp/apache-tomcat
fi

if [[ $osname == $ubuntults ]]; then
sudo mkdir /tmp/apache-tomcat
sudo wget $link_apache_tomcat -O /tmp/apache-tomcat/apache-tomcat.zip
sudo unzip /tmp/apache-tomcat/apache-tomcat.zip -d /opt
sudo chown $username -R /opt/apache-tomcat-9.0.21
sudo chmod +x -R /opt/apache-tomcat-9.0.21
sudo rm -r /tmp/apache-tomcat
fi
