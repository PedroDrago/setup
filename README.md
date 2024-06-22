# README

## Assurance for slower computers:
Change sudo timeout at `visudo`:
```bash
Defaults        env_reset,timestamp_timeout=60
```
Also change the time for screen blocking to `never`, then reboot.

## Kickstart Native
```bash
sudo apt update && sudo apt upgrade -y && sudo apt install git -y && git clone https://github.com/PedroDrago/setup.git $HOME/setup && cd $HOME/setup && bash ./main.sh
```

## Kickstart WSL
```bash
sudo apt update && sudo apt upgrade -y && sudo apt install git -y && git clone https://github.com/PedroDrago/setup.git $HOME/setup && cd $HOME/setup && git checkout wsl && bash ./main.sh
```

# Tips
Following commnad can be used if missed secure boot MOK enroll
```bash
sudo update-secureboot-policy --enroll-key
```
