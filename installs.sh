echo -e "\033[32mRunning installs.sh\033[0m"

# May need to add rustc? removed to try to fix cargo problem in this script
sudo apt install git curl wget vim tree ansible fzf bat tmux arandr ripgrep man rsync tealdeer fd-find feh stow lsof xclip zsh ncdu lldb valgrind htop unzip software-properties-common build-essential ca-certificates gnupg wget libpq-dev libssl-dev fontconfig imagemagick libmagickwand-dev ncurses-term exuberant-ctags make zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev llvm libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev libffi-dev liblzma-dev autoconf bison libyaml-dev libreadline6-dev libgmp-dev libncurses5-dev libgdbm6 libgdbm-dev libdb-dev uuid-dev libcurl4-openssl-dev icu-devtools libicu-dev numactl libfuse2 coreutils ninja-build gettext cmake -y

DISTRO=$(cat /proc/version)

IS_DEBIAN=$(echo "$DISTRO" | grep -i debian)
IS_UBUNTU=$(echo "$UBUNTU" | grep -i debian)
KERNEL=$(uname -r)

if [ ! -z "$IS_DEBIAN" ]
then
    echo "We are on Debian"
    bash $HOME/setup/debian.sh
elif [ ! -z "$IS_UBUNTU" ]
then
    echo "We are on Ubuntu"
    bash $HOME/setup/ubuntu.sh
elif [[ "$KERNEL" != *"WSL"* ]]
then
    echo "We are on WSL" #check distro also? i guess it is not needed
    bash $HOME/setup/wsl.sh
fi


# install softwares only for native OS (not WSL in this case)
if [[ "$KERNEL" != *"WSL"* ]]; then
    sudo apt install flameshot pulseaudio -y
fi
