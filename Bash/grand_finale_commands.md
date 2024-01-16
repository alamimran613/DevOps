# This will run cat command in loop
for host in `cat remhosts`; do echo "$host"; done

# This will ssh into each machine and execute command hostname
for host in `cat remhosts`; do ssh devops@$host hostname; done

# Deploy web server setup on web01, web02 and web03 vm. Run below script to do

[](./web_setup/web_deploy.sh)