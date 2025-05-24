DISTRO=$(cat /proc/version)
KERNEL=$(uname -r)

IS_DEBIAN=$(echo "$DISTRO" | grep -i debian)
IS_UBUNTU=$(echo "$UBUNTU" | grep -i debian)

if [ ! -z "$IS_DEBIAN" ]
then
    echo "We are on Debian"
    bash $HOME/setup/debian/debian.sh
elif [ ! -z "$IS_UBUNTU" ]
then
    echo "We are on Ubuntu"
    bash $HOME/setup/debian/ubuntu.sh
elif [[ "$KERNEL" == *"WSL"* ]]
then
    echo "We are on WSL" #check distro also? i guess it is not needed
    bash $HOME/setup/debian/wsl.sh
fi
