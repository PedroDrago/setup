# README

## Quick Run
```bash
sudo apt update && sudo apt upgrade -y && sudo apt install -y ansible curl git software-properties-common && git clone https://github.com/PedroDrago/ansible && cd ansible && ansible-playbook --ask-vault-password local.yml
```

## Detailed Run
1. Update and Upgrade the system
```bash
sudo apt update && sudo apt upgrade -y
```

2. Install dependencies
```bash
sudo apt install -y ansible curl git software-properties-common
```

3. Clone Repository and enter into it
```bash
git clone https://github.com/PedroDrago/ansible && cd ansible
```

4. Run ansible playbook
```bash
ansible-playbook --ask-vault-password local.yml
```