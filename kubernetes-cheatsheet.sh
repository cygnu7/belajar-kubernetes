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

# Show Pod with Label
$ kubectl get pods --show-labels

# Add Label to Running Pod
$ kubectl label pod [pod-name] [key]=[value]

# Update Label to Running Pod
$ kubectl label pod [pod-name] [key]=[value] --overwrite

# Find Pod with Label
$ kubectl get pods -l [key]
$ kubectl get pods -l [key]=[value]
$ kubectl get pods -l ['!key']
$ kubectl get pods -l [key!]=[value]
$ kubectl get pods -l ['key in (value1, value2']
$ kubectl get pods -l ['key notin (value1, value2)']

# Find Pod with many Label
$ kubectl get pods [key]=[value],[key2]=[value]

# Add Annotation to Running Pod
$ kubectl annotate pod [pod-name] [key]=[value]

# Update Annotation to Running Pod
$ kubectl annotate pod [pod-name] [key]=[value] --overwrite

# Show Namespace
$ kubectl get namespaces
$ kubectl get namespace
$ kubectl get ns

# Show Pod in Namespace
$ kubectl get pod -n Namespace