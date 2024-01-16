#!/bin/bash

# Website deploy on centos7
yum update -y
echo "##############################"
echo "Installing httpd wget unzip without output on terminal"
echo "##############################"
yum install httpd wget unzip -y > /dev/null


sudo systemctl start httpd
sudo systemctl status httpd
sudo systemctl enable httpd

echo "##############################"
echo "Creating directory"
echo "##############################"

mkdir -p /tmp/website
cd /tmp/website
wget https://www.tooplate.com/zip-templates/2136_kool_form_pack.zip
unzip 2136_kool_form_pack.zip
cp -r /tmp/website/2136_kool_form_pack/* /var/www/html/
echo "##############################"
echo "Cleanup"
echo "##############################"
rm -rf /tmp/website

sudo systemctl restart httpd
sudo systemctl status httpd