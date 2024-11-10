echo -e "\033[32mRunning common_installs.sh\033[0m"

# May need to add rustc? removed to try to fix cargo problem in this script
sudo apt install git curl wget vim tree ansible fzf bat tmux arandr ripgrep man rsync fd-find feh stow lsof xclip zsh ncdu lldb valgrind htop unzip software-properties-common build-essential ca-certificates gnupg wget libpq-dev libssl-dev fontconfig imagemagick libmagickwand-dev ncurses-term exuberant-ctags make zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev llvm libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev libffi-dev liblzma-dev autoconf bison libyaml-dev libreadline6-dev libgmp-dev libncurses5-dev libgdbm6 libgdbm-dev libdb-dev uuid-dev libcurl4-openssl-dev icu-devtools libicu-dev numactl libfuse2 coreutils ninja-build gettext cmake -y

kernel=$(uname -r)

# install softwares only for native OS (not WSL in this case)
if [[ "$kernel" != *"WSL"* ]]; then
    sudo apt install flameshot pulseaudio -y
fi
