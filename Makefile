setup-blank-vm:
	ssh -t ubuntu@10.1.1.11 "sudo apt-get update && sudo apt-get install python -y"
	ansible-playbook -kK bootstrap-antsle.yaml
	ssh -t ubuntu@10.1.1.11 "echo 'bootstrap successful!'"

setup-k8s-nodes:
	ansible-playbook -kK playbooks/kubernetes.yaml -u ubuntu