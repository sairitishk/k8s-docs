## shell commands to control deployments:


# should have the following in ~/.bashrc
# alias k='/usr/local/bin/kubectl'
# or
# alias k='kubectl'

k create deployment --name nginx-ksr --replicas 3 nginx:latest --dry-run --output yaml

k get deployments

k describe deployments

k get rs

k describe rs

k get pods

# this prints the details of pod and the controller details as well, if its dpeloyed by a deployment / replicaset
k get pods <pod-name> -o yaml 


# after editing image, when needing to check new image pods status:

k rollout status deployment/nginx-ksr

