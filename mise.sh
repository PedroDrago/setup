echo -e "\033[32mRunning mise.sh\033[0m"

curl https://mise.run | sh
echo "eval \"\$(/$HOME/.local/bin/mise activate bash)\"" >> $HOME/.bashrc
source $HOME/.bashrc
