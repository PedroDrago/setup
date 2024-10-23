echo -e "\033[32mRunning eza.sh\033[0m"

echo "pre source: "
cargo --version
source $HOME/.zshrc
echo "post source: "
cargo --version

cargo install eza
