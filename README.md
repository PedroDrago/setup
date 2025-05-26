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

- [ ] I guess the Ideal would be hosting a version in a URL where I could do `curl -LsSf https://drago.com/setup.sh | sh` instead of executing this blocks of bash.
- [ ] Fix cargo install eza and alacritty

# dual boot steps
1. create partitions with cfdisk
2. format partitions with mkfs.vfat -F 32 and mkfs.btrfs
3. archinstall (set mount points to correct partitions and and set btrfs subvolumes in disk session). maybe this will be better to do by hand to select better options for btrfs mounts
4. reboot and enter installed system
5. uncomment the GRUB_DISABLE_OS_PROBER line in /etc/default/grub
6. install libfuse3 and os-prober `sudo pacman -S os-prober libfuse3`
7. update grub config with `sudo grub-mkconfig -o /boot/grub/grub.cfg`. in this step the output should mention about found windows boot manager


# iwctl
- device list | adapter list
- device X set-property Powered on | adapter X set-property Powered on 
- station X scan
- station X get-networks
- station X connect Y


# IP
- ip link
- ip lint set X up
