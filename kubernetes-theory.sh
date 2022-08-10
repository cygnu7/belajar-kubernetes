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
- Same Resources can run if use different namespace

# What you should know about Namespace
- Pod with same name can run if use different namespace
- Namespace not for isolate Resources
- Pod still can communicate with other pod that have different namespace

# Kubernetes Liveness, Readiness, Startup Probe
- Kubelet use liveness probe to check when to restart the Pod
- If liveness probe not responding, kubelet will do automatic restart to Pod
- Kubelet use readiness probe to check if Pod ready to receive traffic
- Kubelet use startup probe to check if Pod already running or not
- Kubelet wont run liveness and readiness probe if Pod is not running
- Startup probe is important to Pod that have long startup time

# Probe Mechanism
- HTTP Get
- TCP Socket
- Command Exec

# What is Replication Controller
- Replication Controller make sure Pod is running
- If Pod suddenly stop or lost, then Replication Controller will automate running the Pod that suddenly stop
- Replication Controller usually manage more than 1 Pod
- Replication Controller will confirming that the Running Pod is same with Configuratiion, if the Pod is less than the Configuration, Replication Controller will add new Pod
- If the Pod more than the configuratiion, Replication Controller will delete the Pod
- Usually, we dont create Pod manually, always use Controller like Replication Controller

# What is Inside Replication Controller
- Label Selector
- Replica Count
- Pod Template

# Before Deleting Replication Controller
- Make sure add option '--cascade=orphan' if you dont want to delete the Pod inside Replication Controller

# What is Replica Set
- Replica Set is the newest generation froom Replication Controller
- Replica Set have similiar abilities with Replication Controller
- Replica Set have expressive label selector
- Replica Set supports the new set-based selector. Not equality-based selector
- Replication Controller now deprecated