echo -e "\033[32mRunning eza.sh\033[0m"
set -e


# eval $(/home/pdrago/.local/bin/mise activate bash) # FIX: didnt work
$HOME/.local/share/mise/installs/rust/latest/bin/cargo install eza
