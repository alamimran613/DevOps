# Launch EC2 Instance with Ubuntu AMI and login into it using root
sudo -i

# Get openvpn-server setup script 
wget https://git.io/vpn -O openvpn.install.sh

# Make it executable
chmod u+x openvpn-install.sh

# Execute script
./openvpn-install.sh

# When execute above script go with default nature provided by openvpn-server, When it asked for connection for TCP/UDP select the connection as per your use. For basic surfing use UDP and for payment related stuff use TCP. Use Google DNS resolver or as your choice.

# Get the client configuration file and transfer this file to your client system
cat /root/uc_buy.ovpn

# Get openvpn-server status
systemctl status openvpn-server@server.service

# Uninstall, Add New Client, Revoke Existing Client 
./openvpn-install.sh

############################# Windows Client Setup #############################

# Download OpenVPN Client For windows
https://openvpn.net/client/client-connect-vpn-for-windows/

# Upload your uc_buy.ovpn file to client app

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