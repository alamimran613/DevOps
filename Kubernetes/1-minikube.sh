# Documentation
https://kubernetes.io/docs/tutorials/hello-minikube/

# Install minikube for learning - Open powershell as admin and install on local computer
choco install minikube kubernetes-cli -y

# Start kubernetes cluster in local
# minikube start with virtualbox driver and if not work then enable hyper-v feature > restart pc and use below command
# open powershell as admin, This will create VM on hyper-v
minikube start --driver=hyper-v

# Get nodes
kubectl get nodes

# kubeconfig file at home directory
cat .kube/config

# Follow documentation for commands and test with minikube 
