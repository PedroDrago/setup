echo -e "\033[32mRunning nvidia.sh\033[0m"
set -e
export ACCEPT_EULA=Y 


# I guess if someday I have a Radeon system I would need to adjust this to catch this cases.
HAS_NVIDIA_GPU=$(lspci | grep -i nvidia)

if [ ! -z "$HAS_NVIDIA_GPU" ]
then
    GPU=$(lspci | grep -i RTX | awk '{$8 = substr($8, 2); print $8, $9, $10, $11}')
    echo "NVIDIA Card ($GPU) Detected. Installing drivers..."
    # purge all current drivers
    sudo apt purge nvidia-* -y
    # nvidia drivers
    sudo apt install nvidia-kernel-dkms -y
    sudo apt-add-repository contrib non-free non-free-firmware
    sudo apt update -y
    sudo apt install nvidia-driver firmware-misc-nonfree -y
    # secure boot DKMS MOK
    sudo mokutil --import /var/lib/dkms/mok.pub
    sudo mokutil --list-new
fi
