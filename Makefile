setup-blank-vm:
  ssh -t ubuntu@10.1.1.11 "sudo apt-get update && sudp- apt-get install python -y"
  ansible-playbook -kK bootstrap-ansible.yaml