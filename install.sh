# sudo apt-add-repository --yes --update ppa:ansible/ansible
# sudo apt install -y ansible curl git software-properties-common 
# git clone https://github.com/PedroDrago/ansible && cd ansible
# bash build_machine.sh
# sudo ansible-pull -U https://github.com/PedroDrago/ansible


sudo apt update && sudo apt upgrade -y && sudo apt install -y ansible curl git software-properties-common && git clone https://github.com/PedroDrago/ansible && cd ansible && ansible-playbook --ask-vault-password local.yml