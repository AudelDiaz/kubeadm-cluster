start:
	vagrant up
stop:
	vagrant halt
install:
	ANSIBLE_HOST_KEY_CHECKING=False ansible-playbook -i .vagrant/provisioners/ansible/inventory/vagrant_ansible_inventory ansible/main.yml
tools:
	ANSIBLE_HOST_KEY_CHECKING=False ansible-playbook -i .vagrant/provisioners/ansible/inventory/vagrant_ansible_inventory ansible/install-monitoring-tools.yml
clean:
	vagrant destroy
copy-config:
	$(shell ./copy_config.sh)
deploy: | start install