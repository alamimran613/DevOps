# This is production ready cluster of kubernetes using kops (kubernetes operations)
# Prerequisite:
    # 1. kops instance (Using this we create Master and worker node, We can delete cluster and create cluster using this node)
    # 2. IAM user with access key or IAM Role with administrator Access
    # 3. S3 Bucket
    # 4. Route53
    # 5. Public Domain Ex - imranalam.xyz

# Steps:

=> Create IAM User/Role with Administrator Access
=> Create Hosted Zone Route53
    => Hosted Zone > kubevpro.imranalam.xyz
    => Public Hosted Zone
    => After getting NS update in domain registrar using NS
            => Example: Nameserver,  Host: kubevpro, PointsTo: aws provided ns server

=> Launch Ubuntu EC2 Instance (Kops Instance) with t2.micro
=> Create S3 bucket - Same region that your "Kops" Instances available
=> SSH into Kops Instance and follow below commands

# Generate SSH keys
ssh-keygen

# Install AWS Cli
sudo apt update && sudo apt install awscli -y

# AWS Configure
aws configure
=> Enter Access Keys
=> Enter Secret Keys
=> Enter Your current region
=> json

# Install kubectl
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
chmod +x kubectl
sudo mv kubectl /usr/local/bin

# Check kubectl
kubectl --help

# Install kops v1.26.4
wget https://github.com/kubernetes/kops/releases/download/v1.26.4/kops-linux-amd64
chmod +x kops-linux-amd64
sudo mv kops-linux-amd64 /usr/local/bin/kops

# Check kops, write and hit enter
kops
kops version

# Verify my domain, This should resolve all 4 name servers
nslookup -type=ns kubevpro.imranalam.xyz

# Create Configuration of Cluter and store it to S3 bucket
kops create cluster --name=kubevpro.imranalam.xyz \
--state=s3://kubernetes-kops-imran --zones=ap-south-1a,ap-south-1b \
--node-count=2 --node-size=t3.small --master-size=t3.medium --dns-zone=kubevpro.imranalam.xyz \
--node-volume-size=8 --master-volume-size=8

# List Cluster
kops get cluster --state=s3://kubernetes-kops-imran

# Create Cluster
kops update cluster --name kubevpro.imranalam.xyz --state=s3://kubernetes-kops-imran --yes --admin

# Validate Cluster
kops validate cluster --state=s3://kubernetes-kops-imran

# Delete Cluster
kops delete cluster --name kubevpro.imranalam.xyz --state=s3://kubernetes-kops-imran --yes #--admin
# Note: If we do not mention --yes then it will show all resources need to delete

# Check kubectl config file, This file is use to let kubectl connect to cluster
cat ~/.kube/config

######################### Kubectl Commands #########################

# Get Nodes
kubectl get nodes
