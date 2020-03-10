#!/bin/sh
sudo yum -y update
sudo yum install -y httpd
sudo yum install -y unzip
sudo service httpd start
sudo systemctl enable httpd.service
sudo firewall-cmd --zone=public --add-port=80/tcp --permanent
sudo firewall-cmd --reload
cd /var/www/html/
sudo wget https://raw.githubusercontent.com/ahmadzahoory/az103template/master/Az-103-M-07-02-A-Code.zip
sudo unzip Az-103-M-07-02-A-Code.zip
