# Namespaces info: https://kubernetes.io/docs/concepts/overview/working-with-objects/namespaces/
# 1. Namespaces will isolate resources, Group Resources.
# 2. when we delete namespace then all resources inside namespace will be also deleted.
# 3. When we do not specify namespace while creating resources then default namespace will be used.

######################### Commands #########################

# Get namespaces
kubectl get ns

# Get all objects from default namespaces, By default, Default namespace will be selected
kubectl get all

# Get all resources of all namespaces
kubectl get all --all-namespaces

# Get services of specific namespace
kubectl get svc -n kube-system

# Create namespace named "kubekart"
kubectl create ns kubekart

# Create pod in specific namespace
kubectl run nginx1 --image=nginx -n kubekart

# Create pod using yaml file with namespace
nano pod1.yaml Follow this file > [](./pod1.yaml)
kubectl apply -f pod1.yaml

# Get pod from namespace
kubectl get pod -n kubekart

# Delete namespace
kubectl delete ns kubekart
