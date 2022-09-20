# kubeadm-cluster

Deploy a testing k8s environment with vagrant.
- 1 Master
- 1 Worker

## Requirements

- CPU: 4 Cores / 8 Threads
- RAM: 8GB
- OS: Linux/Unix
- Packages Installed:
  - Ansible
  - Virtualbox
  - Vagrant
  - make # Optional for Makefile commands

## Getting started
The following steps were designed for making easy the use of this repository using *make*.

### Clone repository
We are gonna start cloning this repo:
`git clone https://github.com/AudelDiaz/kubeadm-cluster.git`
### Running cluster

When you run the cluster at the first time vagrant creates VM's defined in **Vagrantfile** and provisions them using **Ansible**.

```
make deploy
```

### Accessing VM

For ssh access you just need to use VM name.

```
vagrant ssh master
vagrant ssh worker
```

### Destroying cluster

When you finish you can destroy the testing environment and recover machine resources.

```
make clean
```

### Other extra commands
- `make start`: Start VM's
- `make stop` : Stop VM's
- `make install` : Install kubernetes cluster
- `make tools`: Install Metrics Server and Weave Scope
- `make copy-config`: Copy *master* **~/.kube/config** to host machine. (If you have a previews setup, make a backup and delete the original to create a new one.)

### Running Weave Scope
If you have installed monitoring tools using `make tools` and copied .kube/config to your host with `make copy-config`, you are able to open *Weave Scope* with this command: 
```
kubectl port-forward -n weave "$(kubectl get -n weave pod --selector=weave-scope-component=app -o jsonpath='{.items..metadata.name}')" 4040
```

___
*For more content please visit https://audeldiaz.work*