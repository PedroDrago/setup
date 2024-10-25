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
