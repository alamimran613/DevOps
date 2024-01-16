#!/bin/bash

# Website deploy on centos7
# yum update -y

########################################################################################

# Note: type script name then url then folder name and hit enter
# Example: ./4_var_arguments.sh https://www.tooplate.com/zip-templates/2137_barista_cafe.zip 2137_barista_cafe

########################################################################################
# Declare varibale
SRV="httpd"
#URL="https://www.tooplate.com/zip-templates/2136_kool_form_pack.zip"
#FOLDER="2136_kool_form_pack"
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
wget $1
unzip $2.zip
cp -r $TEMPDIR/$2/* /var/www/html/
echo "##############################"
echo "Cleanup"
echo "##############################"
rm -rf $TEMPDIR

sudo systemctl restart $SRV
sudo systemctl status $SRV