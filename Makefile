install:
				ansible-playbook $(CURDIR)/dotfiles.yml -i local

install_ansible:
				sudo apt-get install software-properties-common
				sudo apt-add-repository ppa:ansible/ansible
				sudo apt-get update
				sudo apt-get install ansible

test:
				ansible-playbook $(CURDIR)/dotfiles.yml -i local --check
