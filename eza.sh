echo -e "\033[32mRunning eza.sh\033[0m"


eval $(/home/pdrago/.local/bin/mise activate bash)
$HOME/.local/share/mise/installs/rust/latest/bin/cargo install eza
