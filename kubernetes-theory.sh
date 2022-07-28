# Why Use Kubernetes
- Change from Monolith to Microservices
- Easy to Scaling Apps
- Change from Virtual Machine to Container
- Only Need 1 OS for all Container
- Kubernetes support many Container Manager

# What is Kubernetes
Kubernetes is Apps to do Automation Deployment, Scaling, and Container Manager

# Kubernetes History
- At first, Google Invented Internal System called Borg (then the name changed to Omega).
- This system help Google to manage many Server.
- Google Published Kubernetes at 2014, as an Open Source System, based on Omega Experience.

# How Kubernetes Work
- Just Create a Configuration File with YML type, then submit it to Kubernetes Master.
- Kubernetes Master will inform Kubernetes Workers to do something based on the Configuration File.

# Kubernetes Master
- kube-apiserver
- etcd
- kube-scheduler
- kube-controller-manager
- cloud-controller-manager

# Kubernetes Nodes
- kubelet
- kube-proxy
- container manager

# What is Node?
- Worker machine on Kubernetes
- Node is a VM or Physical Machine
- Node contains kubelet, kube-proxy, and container manager

# What is Pod
- Pod is the smallest unit at Kubernetes cluster
- Pod can contain many container
- Pod is running apps at Kubernetes Cluster

# Why use Pod
- Easy to Scaling
- Can use many container in one Pod

# What is Label
- Label is important for Pod
- To Organize Pod
- Label can be used to many Kubernetes Resources

# What is Annotation
- Look like Label, but cannot use for filter
- To add more description with big size
- Annotation can contain description up to 256kb

# Why use Namespace
- To separate Resources for multi-tenant, team, or environtment
- Use when too many Resources at Kubernetes