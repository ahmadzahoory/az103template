#!/bin/sh
apt-get -y update
apt-get install -y apache2
sudo apt-get install -y unzip
systemctl start apache2.service
cd /var/www/html/
pwd
sudo rm index.html
wget https://raw.github.com/ahmadzahoory/az103template/master/Az-103-M-02-07-Code.zip
unzip Az-103-M-02-07-Code.zip