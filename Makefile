setup-blank-vm:
	ssh-copy-id -i /home/ubuntu/.ssh/id_rsa.pub ubuntu@10.1.1.160
	ansible-playbook -bK bootstrap-antsle.yaml -u ubuntu

setup-k8s-nodes:
	ansible-playbook -bK playbooks/kubernetes.yaml -u ubuntu