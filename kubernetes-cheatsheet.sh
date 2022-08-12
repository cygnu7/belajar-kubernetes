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
## Create pod yaml file configuration
$ kubectl create -f podfile.yaml

# Delete Pod
$ kubectl delete pod [pod-name]

# Delete Pod use Label
$ kubectl delete pod -l [key]=[value]

# Delete All Pod in Namespace
$ kubectl delete pod --all --namespace [namespace-name]

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

# Create Namespace
## Create namespace yaml file configuration
$ kubectl create -f namespace-file.yaml

# Delete Namespace
$ kubectl delete namespace [namespace-name]

# Create Replication Controller
$ kubectl create -f [rc-file]

# Check Replication Controller
$ kubectl get replicationcontrollers
$ kubectl get replicationcontroller
$ kubectl get rc

# Delete Replication Controller and Pod Inside RC
$ kubectl delete rc nginx-rc

# Delete Replication Controller without delete Pod
$ kubectl delete rc nginx-rc --cascade=false

# Create Replica Set
$ kubectl create -f [rs-file]

# Create Daemon Set
$ kubectl create -f [daemonset-file]

# Show Daemon Set
$ kubectl get daemonsets

# Delete Daemon Set 
$ kubectl delete daemonsets [daemonset-name]

# Create Job
$ kubectl create -f [job-file]

# Show Job
$ kubectl get jobs

# Delete Job 
$ kubectl delete job [job-name]