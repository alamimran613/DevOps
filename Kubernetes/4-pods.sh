# Kubectl uses kube config file to get to your API server of kubernetes cluster.

# Get all nodes
kubectl get nodes

# Get node information
kubectl describe node <enter node name>

# Get node information in yaml format
kubectl get node <enter node name> -o yaml

# Run pod using defination file
mkdir -p definations/pod
cd definations/pod
nano vproapppod.yaml [](./definations/pod/vproapppod.yaml)
kubectl create -f vproapppod.yaml

# Get Pod
kubectl get pod

# Get wide information about pod for image name
kubectl get pod vproapp -o wide

# Describe specific pod
kubectl describe pod vproapp

# Delete pod
kubectl delete pod vproapp

# Get logs of pod
kubectl logs vproapp

# Get more information about pod in yaml format
kubectl get pod nginx12 -o yaml

# Create pod using yaml file
kubectl create -f <file_name.yaml>

# Delete pod using yaml file
kubectl delete -f <file_name.yaml>

# Login into Pod
kubectl exec --stdin --tty YourPodName -- /bin/bash
