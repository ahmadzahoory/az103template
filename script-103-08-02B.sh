#!/bin/sh
apt-get -y update
apt-get install -y apache2
apt-get install -y unzip
systemctl start apache2.service
cd /var/www/html/
rm index.html
wget https://raw.githubusercontent.com/ahmadzahoory/az103template/master/Az-103-M-08-02-Code-2.zip
unzip Az-103-M-08-02-Code-2.zip