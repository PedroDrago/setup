echo -e "\033[32mRunning langs.sh\033[0m"

$HOME/.local/bin/mise use --global rust
$HOME/.local/bin/mise use --global go
$HOME/.local/share/mise/installs/go/latest/bin/go env -w GOPATH="$HOME/.local/go"
$HOME/.local/bin/mise use --global python
$HOME/.local/bin/mise use --global node
