CLOUD_INIT_FILE=cloud-init.yml

create-vms:
	multipass launch --name cloud-init-host1 --cloud-init $(CLOUD_INIT_FILE) 22.04
	multipass launch --name cloud-init-host2 --cloud-init $(CLOUD_INIT_FILE) 22.04


delete-vms:
	multipass delete cloud-init-host1
	multipass delete cloud-init-host2
	multipass purge

list-vms:
	multipass list