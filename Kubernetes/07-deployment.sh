# Create Deployment
kubectl apply -f deployment.yaml

# List Deployment
kubectl get deploy

# Let's update the nginx Pods to use the nginx:1.16.1 image instead of the nginx:1.14.2 image, Not for production
kubectl set image deployment.v1.apps/nginx-deployment nginx=nginx:1.16.1

# Describe Deployments
kubectl describe deployment <deployment-name>

# Describe All Deployments
kubectl describe deployment

# To see the details of each revision, run:
kubectl rollout history deployment/nginx-deployment

# To see the details of each revision, run, Change revision number as your desired number
kubectl rollout history deployment/nginx-deployment --revision=2 

# Rolling Back to a Previous Revision
kubectl rollout undo deployment/nginx-deployment