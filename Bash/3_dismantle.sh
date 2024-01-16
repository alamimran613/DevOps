#!/bin/bash

# Dismantle httpd and website data

sudo systemctl stop httpd
yum remove httpd -y
rm -rf /var/www/html/*
