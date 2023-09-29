################## Chef Requirements and Guide ###########################
# Offical Download Link - https://www.chef.io/downloads/tools/workstation?_ga=2.266984970.569702047.1695989404-1483709231.1695813732&os=el

# Requirements:
Amzon Linux-2

# Change Normal user to Root User
sudo su

# Download Chef
wget https://packages.chef.io/files/stable/chef-workstation/23.7.1042/el/7/chef-workstation-23.7.1042-1.el7.x86_64.rpm

# Install Chef
yum install chef-workstation-23.7.1042-1.el7.x86_64.rpm -y

# Check Chef Version
chef -v
