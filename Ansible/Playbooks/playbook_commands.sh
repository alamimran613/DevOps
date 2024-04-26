# Run playbook
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

# Pass variable value using command, Inventory file defined in ansible.cfg in working directory
ansible-playbook -e USRNM=cliuser -e COMM=cliuser var_precedence.yaml

# Gather Facts for host, This will also show all varibales
# Example: ansible_distribution, ansible_distribution_major_version
ansible -m setup web01

# Create Role
mkdir roles
cd roles
ansible-galaxy init role-name