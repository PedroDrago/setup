echo -e "\033[32mRunning langs.sh\033[0m"
source $HOME/.zshrc
asdf plugin-add golang
asdf install golang latest
asdf global golang latest

asdf plugin-add nodejs
asdf install nodejs latest
asdf global nodejs latest

asdf plugin-add python
asdf install python latest
asdf global python latest

asdf plugin-add rust
asdf install rust latest
asdf global rust latest

asdf reshim
