# Install mysql-server on ubuntu ec2 instance
sudo apt update -y
sudo apt install mysql-server -y
sudo systemctl status mysql

## Secure your MySQL installation
sudo mysql_secure_installation

# Setup MySQL Password for root, (user=> root and password=> Admin@123) If we do not set then we can login direct with root user
# For securing make sure to set password for root user after install then you can create a user for your databse.
sudo mysql
ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'Admin@123';
FLUSH PRIVILEGES;
exit;

# For Login
sudo mysql -u root -pADmin@123

# Know current user, Get into mysql prompt and use below command, This is for system info.
\s

############################# Create User for your database and set password #############################

# Login into MySql as root
sudo mysql -u root -pADmin@123

# Create User
CREATE USER 'imran'@'%' IDENTIFIED BY 'Imran@123';

# Grant Privileges
GRANT ALL PRIVILEGES ON *.* TO 'imran'@'%';

# Flush Privileges
FLUSH PRIVILEGES;

