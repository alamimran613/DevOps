######################## Remotely Login into My-Sql Server ########################

# Edit Configuration file, Find "bind-address = 127.0.0.1" and comment it or if you don't find entry like this then make
# Entry like  bind-address = 0.0.0.0
sudo nano /etc/mysql/mysql.conf.d/mysqld.cnf

# Restart mysql-server
sudo systemctl restart mysql

# Now Go To Remote Machine, Install mysql-client package
sudo apt update -y
sudo apt install mysql-client -y

# Connect to Remote Database
# Syntax - sudo mysql -h <IP of mysql-server> -u <username> -p
sudo mysql -h 15.207.116.102 -u imran -p

# After execute above command enter the password of your user