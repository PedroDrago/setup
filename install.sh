sudo apt-add-repository --yes --update ppa:ansible/ansible
sudo apt install -y ansible curl git software-properties-common
sudo ansible-pull -U https://github.com/PedroDrago/ansible