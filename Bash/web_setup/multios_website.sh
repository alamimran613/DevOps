#!/bin/bash

# Website deploy on centos7 and ubuntu
# yum update -y

# Running code on Centos
# yum --help command used for exit code 0. If any command success then it will return exit code 0
yum --help &> /dev/null
if [ $? -eq 0 ]
then
    # Declare varibale
    SRV="httpd"
    URL="https://www.tooplate.com/zip-templates/2136_kool_form_pack.zip"
    FOLDER="2136_kool_form_pack"
    TEMPDIR="/tmp/website"

    # Executing commands
    echo "Running setup on CentOS"
    echo "##############################"
    echo "Installing $SRV wget unzip without output on terminal"
    echo "##############################"
    yum install $SRV wget unzip -y > /dev/null

sudo systemctl start $SRV
sudo systemctl enable $SRV
sudo systemctl status $SRV

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

else
    # Declare varibale
    SRV="apache2"
    URL="https://www.tooplate.com/zip-templates/2136_kool_form_pack.zip"
    FOLDER="2136_kool_form_pack"
    TEMPDIR="/tmp/website"
    echo "Running setup on Ubuntu"
    echo "##############################"
    echo "Installing $SRV wget unzip without output on terminal"
    echo "##############################"
    echo "Updating repository"
    echo "##############################"
    apt update -y $> /dev/null

    echo "Installing $SRV wget unzip without output on terminal"
    echo "##############################"
    apt install $SRV wget unzip -y > /dev/null

sudo systemctl start $SRV
sudo systemctl enable $SRV
sudo systemctl status $SRV

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
fi
