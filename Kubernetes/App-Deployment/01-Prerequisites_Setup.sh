# All task done in kops instance

# Create Volume for DB pod for store DB data into the volume and note down volume id. and also add tag for kubernetes will attach volume
# Key=KubernetesCluster Value=Kubevpro.imranalam.xyz   Value is my cluster name
# example - vol-03f93b75f85cc51e5
# Use below command for create volume with tag
aws ec2 create-volume \
    --availability-zone ap-south-1a \
    --size 5 \
    --volume-type gp2 \
    --tag-specifications 'ResourceType=volume,Tags=[{Key=KubernetesCluster,Value=kubevpro.imranalam.xyz}]'

# Find your kubernetes nodes availability zones and label nodes as per your deployment zones
kubectl get nodes
kubectl describe node i-0ab194322dabaf3c5 | grep -i ap-south-1 # This will get exact AZ in ap-south-1

# For example if i want to mount my volume to ap-south-1a AZ then find your kubernetes nodes who run in ap-south-1a
# And Label node instance for ap-south-1a
# Lable all your nodes as per respective AZ for easily identify

# Label your nodes
kubectl label nodes i-07a7dcb83c9e8f56d zone=ap-south-1b
kubectl label nodes i-0ab194322dabaf3c5 zone=ap-south-1a
