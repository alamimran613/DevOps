# 1.  Install Docker Debian
sudo apt-get install docker.io -y

# 2. Install Docker for Amazon Linux
sudo yum install docker -y

# 3. Install docker-compose
sudo curl -L https://github.com/docker/compose/releases/download/1.21.2/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

# 4. 
