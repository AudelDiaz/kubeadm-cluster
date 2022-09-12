# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.define "master" do |master|
    master.vm.box = "ubuntu/focal64"
    master.vm.hostname = "master"
    master.vm.box_check_update = true
    master.vm.network "private_network", ip: "192.168.56.7", mac: "A8D3AEFB1F23"
    master.vm.provider "virtualbox" do |vb|
      vb.memory = "2048"
      vb.cpus = 2
    end
  end

  config.vm.define "worker" do |worker|
    worker.vm.box = "ubuntu/focal64"
    worker.vm.hostname = "worker"
    worker.vm.box_check_update = true
    worker.vm.network "private_network", ip: "192.168.56.9", mac: "A8D3B5DD300B"
    worker.vm.provider "virtualbox" do |vb|
      vb.memory = "2048"
      vb.cpus = 2
    end
  end

  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "ansible/install-dependencies.yml"
    ansible.groups = {
      "workers" => ["worker"],
      "masters" => ["master"]
    }
  end
end
