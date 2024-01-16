# Remote command excution

## Setup Centos
<!-- Setup web01 Machine -->
ssh vagrant@web01
sudo -i
useradd devops
passwd devops
<!-- Add user devops in sudoers file -->
visudo
devops ALL=(ALL)   NOPASSWD: ALL

<!-- Setup web02 Machine -->
ssh vagrant@web02
sudo -i
useradd devops
passwd devops
<!-- Add user devops in sudoers file -->
visudo
devops ALL=(ALL)   NOPASSWD: ALL

## Setup Ubuntu
<!-- Setup web03 Machine -->
<!-- Login direct into web03 and switch as root -->
vim /etc/ssh/sshd_config
<!-- Find passwordAuthentication no and set to yes -->
systemctl restart ssh

### Login via scriptbox vm to web03 
ssh vagrant@web03
sudo -i
<!-- Add user devops using adduser command this will ask to setup password and other field will be blank so hit enter again and again -->
adduser devops
visudo
devops ALL=(ALL)   NOPASSWD: ALL

## Execute remote command
<!-- This will execute uptime command on remote machine through devops user -->
ssh devops@web01 uptime

## Note: This will ask password again and again so avoid this setup [](./ssh_key_exchange.md) using key exchange