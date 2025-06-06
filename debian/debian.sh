set -e
bash $HOME/setup/debian/installs.sh
bash $HOME/setup/debian/i3.sh
bash $HOME/setup/debian/ssh.sh
bash $HOME/setup/debian/nvim.sh
bash $HOME/setup/debian/chrome.sh
bash $HOME/setup/debian/obsidian.sh
bash $HOME/setup/debian/firefox-dev.sh
bash $HOME/setup/debian/vscode.sh
bash $HOME/setup/debian/docker.sh
bash $HOME/setup/debian/omz.sh
bash $HOME/setup/debian/dotfiles.sh
bash $HOME/setup/debian/fonts.sh
bash $HOME/setup/debian/mise.sh
bash $HOME/setup/debian/langs.sh
bash $HOME/setup/debian/ghostty.sh
bash $HOME/setup/debian/nvidia.sh
bash $HOME/setup/debian/mount.sh
chsh -s $(which zsh)
sudo reboot -f
