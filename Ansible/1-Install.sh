# Documentation Link - https://docs.ansible.com/ansible/latest/installation_guide/installation_distros.html

# Installing Ansible AKA Contorl Machine
sudo apt update -y
sudo apt install software-properties-common
sudo add-apt-repository --yes --update ppa:ansible/ansible
sudo apt install ansible -y 

# Check Version
ansible --version

# Create Ansible configuration for not to check host key, Just accept connection without asking yes/no
# This will skip interactive and accept all connections

# Backup original configuration file
sudo -i
cd /etc/ansible
mv ansible.cfg ansible.cfg.backup

# Generate Ansible Config File
ansible-config init --disabled -t all > ansible.cfg

# Edit ansible.cfg file
nano ansible.cfg

# Change configuration like below
host_key_checking=True => host_key_checking=False

