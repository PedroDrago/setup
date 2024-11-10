# README

## Native (single monitor)
```bash
sudo apt update && sudo apt upgrade -y && sudo apt install git -y && git clone https://github.com/PedroDrago/setup.git $HOME/setup && cd $HOME/setup && bash ./main.sh single
```

## Native (dual monitor)
```bash
sudo apt update && sudo apt upgrade -y && sudo apt install git -y && git clone https://github.com/PedroDrago/setup.git $HOME/setup && cd $HOME/setup && bash ./main.sh dual
```

## WSL (single monitor)
```bash
sudo apt update && sudo apt upgrade -y && sudo apt install git -y && git clone https://github.com/PedroDrago/setup.git $HOME/setup && cd $HOME/setup && bash ./wsl.sh single
```

## WSL (dual monitor)
```bash
sudo apt update && sudo apt upgrade -y && sudo apt install git -y && git clone https://github.com/PedroDrago/setup.git $HOME/setup && cd $HOME/setup && bash ./wsl.sh dual
```

# Tips
Following commnad can be used if missed secure boot MOK enroll
```bash
sudo update-secureboot-policy --enroll-key
```

### Todo
Need to unify installation process, so instead of passing as arg and having different main scripts, just one main script that identifies distro/machine with an if (just like below example):
```bash
if [[ "$kernel" != *"WSL"* ]]; then
    sudo apt install flameshot pulseaudio -y
fi
```

Idea will be to have:
`debian_main.sh`
`ubuntu_main.sh`
`wsl_main.sh` (debian also)

and in the `main.sh` will be something like that
```bash
if wsl bash wsl_main.sh
elseif debian 
    then bash debian_main.sh
elseif ubuntu 
    then bash ubuntu_main.sh
```


