# README

# (NOTE FOR ME) PAY ATENTION TO ALACRITTY AND EZA INSTALLATION, IT WILL OUTPUT DEBUG INFO

## Kickstart
Default
```bash
sudo apt update && sudo apt upgrade -y && sudo apt install git -y && git clone https://github.com/PedroDrago/setup.git $HOME/setup && cd $HOME/setup && bash ./main.sh
```

Broken apt (usually with debian 12):
```bash
echo -e "deb http://deb.debian.org/debian bookworm main\ndeb http://deb.debian.org/debian bookworm-updates main\ndeb http://security.debian.org/debian-security bookworm-security main\ndeb http://ftp.debian.org/debian bookworm-backports main" > "$HOME/filename.py" && sudo apt update && sudo apt upgrade -y && sudo apt install git -y && git clone https://github.com/PedroDrago/setup.git $HOME/setup && cd $HOME/setup && bash ./main.sh
```
