# README

### Limit max battery
sudo echo 1 >/sys/bus/platform/drivers/ideapad_acpi/VPC2004:00/conservation_mode

### important for network connection
pacman -S dhcpcd
systemctl enable dhcpcd

### dual boot steps
1. create partitions with cfdisk
2. format partitions with mkfs.vfat -F 32 and mkfs.btrfs
3. archinstall (set mount points to correct partitions and and set btrfs subvolumes in disk session). maybe this will be better to do by hand to select better options for btrfs mounts
4. reboot and enter installed system
5. uncomment the GRUB_DISABLE_OS_PROBER line in /etc/default/grub
6. install libfuse3 and os-prober `sudo pacman -S os-prober libfuse3`
7. update grub config with `sudo grub-mkconfig -o /boot/grub/grub.cfg`. in this step the output should mention about found windows boot manager

### iwctl
- device list | adapter list
- device X set-property Powered on | adapter X set-property Powered on 
- station X scan
- station X get-networks
- station X connect Y

### IP
obs: will only enable internet connection for what i understand, this is an emergencial strategy, focus should on always having the correct daemon
- ip link
- ip lint set X up
