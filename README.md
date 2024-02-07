# README

## For assurance:
Change sudo timeout at `visudo`:
```bash
Defaults        env_reset,timestamp_timeout=60
```
Also change the time for screen blocking to `never`

## Kickstart
```bash
sudo apt update && sudo apt upgrade -y && sudo apt install -y ansible curl git software-properties-common && git clone https://github.com/PedroDrago/ansible && cd ansible && ansible-playbook --ask-vault-password local.yml
```

## Install Langs
```bash
sudo apt update && sudo apt pgrade -y && sudo ansible-playbook langs.yml
```
