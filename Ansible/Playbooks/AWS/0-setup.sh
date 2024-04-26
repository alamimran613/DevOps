# Export environment variable in bashrc for IAM CLi user key
export AWS_ACCESS_KEY_ID='AK123'
export AWS_SECRET_ACCESS_KEY='abc123'

# Install pip
sudo apt install python3-pip -y

# Install boto3 library for run ansible playbook for aws
pip3.10 install boto3

# Install amazon aws module, For launching ec2 instance
ansible-galaxy collection install amazon.aws

