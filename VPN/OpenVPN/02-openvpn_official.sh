# Documentation Link - Ubuntu 22.04
https://as-portal.openvpn.com/instructions/ubuntu-22-arm64/installation

# Install openvpn-as
apt update && apt -y install ca-certificates wget net-tools gnupg
wget https://as-repository.openvpn.net/as-repo-public.asc -qO /etc/apt/trusted.gpg.d/as-repository.asc
echo "deb [arch=amd64 signed-by=/etc/apt/trusted.gpg.d/as-repository.asc] http://as-repository.openvpn.net/as/debian jammy main">/etc/apt/sources.list.d/openvpn-as-repo.list
apt update && apt -y install openvpn-as

# You will Get ouput like this
Access Server 2.13.1 has been successfully installed in /usr/local/openvpn_as
Configuration log file has been written to /usr/local/openvpn_as/init.log

Access Server Web UIs are available here:
Admin  UI: https://172.31.39.40:943/admin
Client UI: https://172.31.39.40:943/
To login please use the "openvpn" account with "qFCf0itBsff1" password.
(password can be changed on Admin UI)

# Check Service Status
systemctl status openvpnas.service

# Access using public ip and password of admin example below
https://13.234.20.131:943/admin

Username: openvpn
Password: qFCf0itBsff1 # Change password in UI Admin Panel

# Create User for client
Admin Panel => User Management => User Permissions => Add user (Allow Auto Login) and set password for that
Save and Update Running Cluster

# Login with user URL for download client application for user, Enter client user and password that created above
https://13.234.20.131:943/

# User Locked Profile is will ask password, Auto Login Profile will not ask password

# Download autologin profile and edit in editor find all private IP and replace with Public IP
# Now Import the file in client application and you can connect. For example
remote 172.31.39.40 1194 udp # Change private IP to Public
remote 172.31.39.40 1194 udp # Change private IP to Public
remote 172.31.39.40 443 tcp  # Change private IP to Public
remote 172.31.39.40 1194 udp # Change private IP to Public
remote 172.31.39.40 1194 udp # Change private IP to Public
remote 172.31.39.40 1194 udp # Change private IP to Public
remote 172.31.39.40 1194 udp # Change private IP to Public
remote 172.31.39.40 1194 udp # Change private IP to Public

# Now you can successfully Login

############################# Linux Client Setup #############################

# If you use in ec2 machine then your connection will break to the server. Use this in your own computer
# Download openvpn client
apt update -y && apt install openvpn -y

# Get your ovpn file in system and use below command for connect, Run on foreground
openvpn --config filename.ovpn

# Run on background
openvpn --config filename.ovpn --daemon

# Disconnect VPN which is run in background
ps aux | grep openvpn | grep -v grep # For verify correct process
ps aux | grep openvpn | grep -v grep | awk '{print $2}' # This will filter exact process ID
kill <PID>

# Note: If you need TCP Connection then go to client applications setting and set it to TCP
# If you restart your EC2 then public ip will change so edit client file and change public ip then connect