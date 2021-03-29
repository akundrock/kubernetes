setup-blank-vm:
	ansible-playbook -kK bootstrap-antsle.yaml -u ubuntu

setup-k8s-nodes:
	ansible-playbook -kK playbooks/kubernetes.yaml -u ubuntu