# helm create: Creates a new Helm chart with the specified name.
# This command will generate the basic directory structure and files needed for a Helm chart
# Usage: helm create [CHART_NAME]
# Example: helm create my_chart
helm create [CHART_NAME]

# helm repo: Manages Helm chart repositories. This command allows you to add, list, remove, and update repositories where Helm charts are stored.
helm repo

# helm repo list: Lists all the Helm chart repositories that have been added to Helm.
helm repo list

# helm repo add: Adds a new Helm chart repository to Helm.
# Connect Local repo to remote. It is like shortcut for remote repo.
# Usage: helm repo add [REPO_NAME] [REPO_URL]
# Example: helm repo add stable https://charts.helm.sh/stable
helm repo add [REPO_NAME] [REPO_URL]

# helm repo remove: Removes a Helm chart repository from Helm.
# Usage: helm repo remove [REPO_NAME]
# Example: helm repo remove stable
helm repo remove [REPO_NAME]

# helm search repo: Searches for charts in the Helm repositories that have been added to Helm.
# Usage: helm search repo [keyword]
# Example: helm search repo nginx
helm search repo [keyword]

# helm show: Displays information about a Helm chart.
# Usage: helm show [command] [chart]
# Commands:
# - values: Displays the default values for a chart.
# - chart: Displays metadata about a chart.
# - readme: Displays the README file of a chart.
# Example: helm show values stable/nginx
helm show [command] [chart]

# helm install: Installs a Helm chart onto your Kubernetes cluster.
# Usage: helm install [RELEASE_NAME] [CHART] [flags]
# Example: helm install my-release stable/nginx
helm install [RELEASE_NAME] [CHART] [flags]
helm install my-release stable/nginx --wait --timeout 10s

# helm create: Creates a new Helm chart with the specified name.
# Usage: helm create [CHART_NAME]
# Example: helm create mychart
helm create [CHART_NAME]

######################################################################################
############################ Deploy on Kubernetes Cluster ############################
######################################################################################

# helm install --dry-run: Simulates an installation of a Helm chart without actually installing it onto your Kubernetes cluster.
# Usage: helm install [RELEASE_NAME] [CHART] --dry-run [flags]
# Example: helm install my-release stable/nginx --dry-run
helm install [RELEASE_NAME] [CHART] --dry-run [flags]

# helm install: Installs a Helm chart onto your Kubernetes cluster.
# Usage: helm install [RELEASE_NAME] [CHART] [flags]
# Example: helm install my-release stable/nginx --wait --timeout 10s
helm install [RELEASE_NAME] [CHART] [flags]

# helm delete: Deletes a Helm release from your Kubernetes cluster.
# Usage: helm delete [RELEASE_NAME]
# Example: helm delete my-release
helm delete [RELEASE_NAME]

