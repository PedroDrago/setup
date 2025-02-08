# README

## Kickstart
```bash
sudo apt update && sudo apt upgrade -y && sudo apt install git -y && git clone https://github.com/PedroDrago/setup.git $HOME/setup && cd $HOME/setup && bash ./main.sh
```

## Broken apt (Debian 12)
```bash
sudo echo -e "deb http://deb.debian.org/debian/ bookworm main contrib non-free-firmware non-free\ndeb-src http://deb.debian.org/debian/ bookworm main contrib non-free-firmware non-free\ndeb http://security.debian.org/debian-security bookworm-security main contrib non-free-firmware non-free\ndeb-src http://security.debian.org/debian-security bookworm-security main contrib non-free-firmware non-free\ndeb http://deb.debian.org/debian/ bookworm-updates main contrib non-free-firmware non-free\ndeb-src http://deb.debian.org/debian/ bookworm-updates main contrib non-free-firmware non-free" > /etc/apt/sources.list && sudo apt update && sudo apt upgrade -y && sudo apt install git -y && git clone https://github.com/PedroDrago/setup.git $HOME/setup && cd $HOME/setup && bash ./main.sh
```

## To-do

I guess the Ideal would be hosting a version in a URL where I could do `curl -LsSf https://drago.com/setup.sh | sh`
