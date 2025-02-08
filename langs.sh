echo -e "\033[32mRunning langs.sh\033[0m"

$HOME/.local/bin/mise use --global go
$HOME/.local/share/mise/installs/go/latest/bin/go env -w GOPATH="$HOME/.local/go"
$HOME/.local/bin/mise use --global python
$HOME/.local/bin/mise use --global node
$HOME/.local/bin/mise use --global zig@0.13
$HOME/.local/bin/mise use --global rust
$HOME/.local/share/mise/installs/rust/latest/cargo install eza # Why this does not work?
$HOME/.local/share/mise/installs/rust/latest/cargo install alacritty # Why this does not work?
# mv $HOME/.local/share/mise/installs/rust/latest/alacritty /usr/bin/
