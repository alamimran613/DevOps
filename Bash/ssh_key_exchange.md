## Using this you can login without password

<!-- This will create 2 file .ssh/id_rsa and .ssh/id_rsa.pub
id_rsa is private key and id_rsa.pub is public key -->
ssh-keygen
<!-- Copy public key to another machine, copy id_rsa.pub to another machine -->
ssh-copy-id user@ip
<!--  Example -->
ssh-copy-id devops@web01

<!-- Do this for all VMs -->
ssh-copy-id devops@web02
ssh-copy-id devops@web03

## Now you are able to login and pass remote command without asking password

## Execute remote command
<!-- This will execute uptime command on remote machine through devops user -->
ssh devops@web01 uptime
ssh devops@web02 uptime
ssh devops@web03 uptime