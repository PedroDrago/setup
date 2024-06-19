echo -e "\033[32mRunning rust_tools.sh\033[0m"
source $HOME/.zshrc
cargo install eza
cargo instal bottom
cargo install alacritty
asdf reshim
sudo ln -s ~/.asdf/shims/alacritty /usr/bin/
