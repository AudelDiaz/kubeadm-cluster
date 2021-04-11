# kubeadmin-cluster
Deploy a testing k8s environment with vagrant

## Requirements
 * CPU: 4 Cores / 8 Threads
 * RAM: 8GB
 * OS: Linux/Unix
 * Packages Installed:
    - Ansible
    - Virtualbox / VMWare
    - Vagrant

## Getting started
### Running cluster
When you run the cluster at the first time vagrant creates VM's defined in **Vagrantfile** and provisions them using **Ansible**
``` 
vagrant up 
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
vagrant destroy
```


