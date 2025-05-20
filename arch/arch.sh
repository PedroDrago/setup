cd $HOME/setup && git remote rm origin && git remote add origin git@github.com:pedrodrago/setup.git && cd -
bash $HOME/setup/arch/installs.sh
bash $HOME/setup/arch/yay.sh
bash $HOME/setup/arch/yay_installs.sh
bash $HOME/setup/arch/ssh.sh
bash $HOME/setup/arch/nvim.sh
bash $HOME/setup/arch/chrome.deb
bash $HOME/setup/arch/obsidian.sh
bash $HOME/setup/arch/vscode.sh
bash $HOME/setup/arch/docker.sh
bash $HOME/setup/arch/omz.sh
bash $HOME/setup/arch/mise.sh
bash $HOME/setup/arch/dotfiles.sh
bash $HOME/setup/arch/langs.sh
# bash $HOME/setup/arch/cargo.sh
chsh -s $(/usr/bin/zsh)
sudo reboot -f
