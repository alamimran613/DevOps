The kubeconfig file is a configuration file used by the Kubernetes command-line tool, kubectl, to connect to Kubernetes clusters. It stores information about clusters, authentication details, and other settings needed to access and interact with Kubernetes clusters.

### Location

cat ~/.kube/config

We can copy and paste kube config file in local system and interact with our K8s cluter. kubectl should be installed on that system. For windows we can use chocolaty.

We also use for jenkins.

### Here's what typically included in a kube config file
1. Clusters
2. Users
3. Namespaces
4. Authentication Mechanisms