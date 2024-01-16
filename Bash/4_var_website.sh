#!/bin/bash

# Website deploy on centos7
# yum update -y

# Declare varibale
SRV="httpd"
URL="https://www.tooplate.com/zip-templates/2136_kool_form_pack.zip"
FOLDER="2136_kool_form_pack"
TEMPDIR="/tmp/website"

echo "##############################"
echo "Installing $SRV wget unzip without output on terminal"
echo "##############################"
yum install $SRV wget unzip -y > /dev/null

sudo systemctl start $SRV
sudo systemctl status $SRV
sudo systemctl enable $SRV

echo "##############################"
echo "Creating directory"
echo "##############################"

mkdir -p $TEMPDIR
cd $TEMPDIR
wget $URL
unzip $FOLDER.zip
cp -r $TEMPDIR/$FOLDER/* /var/www/html/
echo "##############################"
echo "Cleanup"
echo "##############################"
rm -rf $TEMPDIR

sudo systemctl restart $SRV
sudo systemctl status $SRV