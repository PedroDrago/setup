# nvidia drivers
sudo apt install nvidia-kernel-dkms -y
sudo apt-add-repository contrib non-free non-free-firmware
sudo apt update -y
sudo apt install nvidia-driver firmware-misc-nonfree -y

# secure boot DKMS MOK
sudo mokutil --import /var/lib/dkms/mok.pub
sudo mokutil --list-new
