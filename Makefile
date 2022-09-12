start:
	vagrant up
stop:
	vagrant halt
install:
	ANSIBLE_HOST_KEY_CHECKING=False ansible-playbook -i .vagrant/provisioners/ansible/inventory/vagrant_ansible_inventory ansible/main.yml
clean:
	vagrant destroy
deploy: | start install