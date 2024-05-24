# Create Replica Set
kubectl create -f <file-name.yaml>

# List Replica Set
kubectl get rs

# Describe Replica Set
kubectl describe rs <name of replica set>

# Scale Down/In, If replica change configured like 3 to 5 and apply those changes then, for production
kubectl apply -f <file-name.yaml>

# Using command line, Not for production
kubectl scale --replicas=1 rs/<replica-set-name>

# Using edit mode of replica set, Find replica => change and save and quit, Not for production
kubectl edit rs <replica-set-name>

# Delete Replica Set
kubectl delete rs <replica-set-name>
