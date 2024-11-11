echo -e "\033[32mRunning langs.sh\033[0m"

source $HOME/.zshrc

mise use --global rust
mise use --global go
go env -w GOPATH="$HOME/.local/go" # FIX: appears to not be working
mise use --global python
mise use --global node
