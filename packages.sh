echo -e "\033[32mRunning packages.sh\033[0m"
source $HOME/.zshrc

# Rust
#  FIX: for some reason this is using the wrong rustc version when using the script? after reboot just executing cargo install eza/alacritty works fine
cargo install eza
