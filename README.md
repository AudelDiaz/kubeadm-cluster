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

___
*For more content visit https://audeldiaz.work*