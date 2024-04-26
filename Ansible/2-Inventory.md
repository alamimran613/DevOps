# Setup Inventory Work Location - All Files available in "Inventory" Directory
## If we do not use Inventory file then ansible will use default file and the path of that file is
## /etc/ansible/hosts

**Setup Inventory**
mkdir -p project/exercise1
cd project/exercise1
nano inventory [](./Inventory/inventory_1.yaml)

**Create Key Pair File**
=> Copy client.pem file inside project/exercise1 directory

nano clientkey.pem
chmod 400 clientkey.pem

**Test Command**
ansible web01 -m ping -i inventory
ansible all -m ping -i inventory
ansible "*" -m ping -i inventory
