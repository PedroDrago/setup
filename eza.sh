echo -e "\033[32mRunning eza.sh\033[0m"

echo "[EZA] pre source: "
cargo --version
source $HOME/.zshrc
echo "[EZA] post source: "
cargo --version

cargo install eza
