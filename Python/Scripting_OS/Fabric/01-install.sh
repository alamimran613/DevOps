# Install python
apt update
apt install python
wget https://bootstrap.pypa.io/pip/2.7/get-pip.py
python get-pip.py

#Install fabric
pip install 'fabric<2.0'

# After install and want to run script to remote machine then
# Configure your remote machine
login into each machine
add user and create password for that user
enable pasword based login
add user into sudoers file

# Configure your script machine
ssh-keygen
ssh-key-id username@ip

# Now you are able to login using key based without password, you can now remove password authentication from remote machhine