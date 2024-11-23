bash $HOME/setup/nvidia.sh
bash $HOME/setup/installs.sh
bash $HOME/setup/i3.sh
bash $HOME/setup/ssh.sh
bash $HOME/setup/nvim.sh
bash $HOME/setup/chrome.deb
bash $HOME/setup/firefox-dev.sh
bash $HOME/setup/vscode.deb
bash $HOME/setup/docker.sh
bash $HOME/setup/omz.sh
bash $HOME/setup/dotfiles.sh
bash $HOME/setup/fonts.sh
bash $HOME/setup/mise.sh
eval $(/home/pdrago/.local/bin/mise activate bash)
bash $HOME/setup/langs.sh
bash $HOME/setup/eza.sh
bash $HOME/setup/alacritty.sh
chsh -s $(which zsh)
sudo reboot -f
