# How to Install Kubernetes at Local
- Install use Docker Desktop (Preferences > Enable Kubernetes)
- Install use minikube (https://kubernetes.io/docs/tasks/tools/)

# Minikube
$ minikube start
$ minikube stop
$ minikube status

# Kubectl
## Tools to interact with kubernetes cluster
$ kubectl version

# Show all nodes
$ kubectl get node

# Show Node Details
$ kubectl describe node minikube

# Create Pod
$ kubectl create -f podfile.yaml

# Delete Pod
$ kubectl delete pod [pod-name]

# Pod Details
$ kubectl get pod
$ kubectl get pod -o wide
$ kubectl describe pod [pod-name]

# Test Running Pods
$ kubectl port-forward [pod-name] [local-port]:[pod-port]

# Find Pod with Label

# Find Pod with many Label