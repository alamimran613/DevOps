# Ansible configuration creation steps

## For source file [](./ansible.cfg)

sudo touch /var/log/ansible.log
sudo chown ubuntu.ubuntu /var/log/ansible.log

Create file named ansible.cfg in working directory
Copy [](./ansible.cfg) to this file

## Run Playbook
ansible-playbook <playbook_name.yaml>
ansible-playbook db.yaml