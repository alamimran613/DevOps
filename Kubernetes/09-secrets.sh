# Create Secrets Imperative (Using Command Line)
kubectl create generic db-secret --from-literal=MYSQL_ROOT_PASSWORD=yourpassword

# Get Secret
kubectl get secret db-secret -o yaml

# Create Secret Declarative (Using Yaml File), Firstly we have to encode the data
echo -n "yourpassword" | base64 # Output will be like below
eW91cnBhc3N3b3Jk # Use this in your yaml file

# Create secret of yaml file
kubectl apply -f secret.yaml [](./definitions/app/10-secret.yaml)

# Decode Manually just for understanding purpose
echo 'eW91cnBhc3N3b3Jk' | base64 --decode
yourpassword # This will get output
