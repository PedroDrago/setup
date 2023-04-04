#ansible-playbook -t dotfiles ansible_all.yml --ask-become-pass --ask-vault-pass #tag dotfiles inside ansible_all
ansible-playbook --ask-vault-password local.yml