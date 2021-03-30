setup-blank-vm:
	ssh-copy-id -i /home/ubuntu/.ssh/id_rsa.pub ubuntu@10.1.1.170
	ansible-playbook -bK bootstrap-antsle.yaml -u ubuntu

setup-k8s-master:
	ansible-playbook -bK playbooks/kubernetes-master.yaml -u ubuntu

setup-k8s-worker:
	ansible-playbook -bK playbooks/kubernetes-worker.yaml -u ubuntu