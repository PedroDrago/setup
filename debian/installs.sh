echo -e "\033[32mRunning installs.sh\033[0m"
export ACCEPT_EULA=Y 

sudo apt install git curl wget vim tree ansible fzf bat tmux ripgrep man rsync tealdeer fd-find feh stow lsof xclip zsh ncdu lldb valgrind htop unzip clang software-properties-common build-essential ca-certificates meson gnupg wget libpq-dev libssl-dev fontconfig imagemagick libmagickwand-dev ncurses-term exuberant-ctags make zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev llvm libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev libffi-dev liblzma-dev autoconf bison libyaml-dev libreadline6-dev libgmp-dev libncurses5-dev libgdbm6 libgdbm-dev libdb-dev uuid-dev libcurl4-openssl-dev icu-devtools libicu-dev numactl libfuse2 coreutils ninja-build gettext cmake net-tools -y

DISTRO=$(cat /proc/version)
IS_DEBIAN=$(echo "$DISTRO" | grep -i debian)
IS_UBUNTU=$(echo "$UBUNTU" | grep -i ubuntu)
KERNEL=$(uname -r)

if [ ! -z "$IS_UBUNTU" ]
then
    sudo ubuntu-drivers install # WARN: I Don't know if this need a -y flag or not
    sudo apt install ubuntu-restricted-extras -y

fi
if [[ "$KERNEL" != *"WSL"* ]]; then # NOTE: maybe this could be checked if $DISTRO, need to check in WSL what is the output
    sudo apt install flameshot pulseaudio arandr libgtk-4-dev libadwaita-1-dev -y
fi


if [[ "$KERNEL" == *"WSL"* ]]; then
    sudo apt install libasound2 #obsidian in wsl2
fi
