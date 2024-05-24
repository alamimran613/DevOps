# Create Config Map using command
kubectl create configmap db-config --from-literal=MYSQL_DATABASE=accounts --from-literal=MYSQL_ROOT_PASSWORD=yourpassword

# Create Config Map using yaml file
kubectl apply -f configmap.yaml

# Get config map
kubectl get cm

# Get specific config map
kubectl get cm db-config -o yaml

# Describe config map in yaml format
kubectl get cm <config-map-name> -o yaml

