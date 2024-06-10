# Download Helm on Kops Instance
wget https://get.helm.sh/helm-v3.15.1-linux-amd64.tar.gz

# Extract Helm Tar File
tar -xvf helm-v3.15.1-linux-amd64.tar.gz
cd linux-amd64

# Move helm file to bin location
sudo mv helm /usr/bin/helm

# Check Version
helm version