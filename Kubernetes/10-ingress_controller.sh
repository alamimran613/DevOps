# Install Ingress Controller (Nginx Ingress Controller) For AWS
Documentation Link: https://kubernetes.github.io/ingress-nginx/deploy/#aws

# Create Ingress Controller, This file is saved and name is: 12-ingress_deploy.yaml, This will create Network Load Balancer in AWS
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v1.1.3/deploy/static/provider/aws/deploy.yaml

# Check Ingress Objects in Name Spaces
kubectl get ns
kubectl get all -n ingress-nginx

# Create Deployment, Service
File is in => Ingress_Deployment =>
kubectl apply -f 01-Deployment.yaml
kubectl apply -f 02-Service.yaml

# Create DNS CName record for Load Balancer
1 => Go to Load Balancer get DNS Name
2 => Go to GoDaddy, Create Cname Rcord, Enter <hostname> and <Load Balancer End Point> and save it.
Example: vprofile a98c84cb64cff4e8b92c5e072bc6e371-d5d324f261aaee0f.elb.ap-south-1.amazonaws.com

# We create Ingress rule for service so make sure your service in running. To check service
kubectl get svc
kubectl describe svc my-app

# Create Ingress Rule 
File is in => Ingress_Deployment => 03-Ingress.yaml
kubectl apply -f 03-Ingress.yaml

# Get Ingress
Kubectl get ingress

############################# Cleanup #############################

# Delete Ingress Controller, Wait for some time this will delete controller and Network Load Balancer in AWS
kubectl delete -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v1.1.3/deploy/static/provider/aws/deploy.yaml

# Or you can delete Namespace, But use above file for good practice. If you create using manifest file then delte it with manifest file
kubectl get ns
kubectl delete ns ingress-nginx

# Delete Ingress Rule, Service and Deployment Using that file when we create.