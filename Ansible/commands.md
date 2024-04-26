# Documentation: https://docs.ansible.com/ansible/latest/command_guide/intro_adhoc.html
## ad hoc commands are great for tasks you repeat rarely. For example, if you want to power off all the machines 
## in your lab for Christmas vacation, you could execute a quick one-liner in Ansible without writing a playbook.
## An ad hoc command looks like this:

## Check Ansible Version
ansible --version

## Ping your "web01" target machines hosts, Module ping and inventory file is inventory
ansible web01 -m ping -i inventory

## Ping All your target machines hosts
ansible "*" -m ping -i inventory

## Ping All hosts that contain web target machines hosts
ansible "web*" -m ping -i inventory

## Install Package on target machine (CentOS 9), httpd package with root privelege (--become)
ansible web01 -m ansible.builtin.yum -a "name=httpd state=present" -i inventory --become

## Remove Package on target machine (CentOS 9), httpd package with root privelege (--become)
ansible web01 -m ansible.builtin.yum -a "name=httpd state=absent" -i inventory --become

## Start and Enable service on target machine group (CentOS 9), httpd package with root privelege (--become)
## This execute systemctl start httpd and systemctl enable httpd
ansible webservers -m ansible.builtin.service -a "name=httpd state=started enabled=yes" -i inventory --become

## Copy File From Control Machine => Target machine on a specific group
ansible webservers -m ansible.builtin.copy "src=index.html dest=/var/www/html/index.html" -i inventory --become

## Copy File From Control Machine => Target machine on a specific group, All files recursive
ansible webservers -m ansible.builtin.copy -a "src=/path/to/website/files/ dest=/var/www/html/ recurse=yes" -i inventory --become


**########################################################## Playbook Commands ##########################################################**

## Run playbook
ansible-playbook -i inventory web-db.yaml

## Run playbook with details output
ansible-playbook -i inventory web-db.yaml -vv

## Run playbook with more details output
ansible-playbook -i inventory web-db.yaml -vvv

# Syntax Check, If output will playbook name then syntax is good.
ansible-playbook -i inventory web-db.yaml --syntax-check

# Dry Run, Use this before exucute playbook, But don't fully rely on it. Dry run takes you very close to the actual execution
# But not the exact execution
ansible-playbook -i inventory web-db.yaml -C

# Gather Facts for host, This will also show all varibales
## Example: ansible_distribution, ansible_distribution_major_version
ansible -m setup web01

# Create Role
mkdir roles
cd roles
ansible-galaxy init role-name