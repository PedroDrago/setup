git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.14.0
asdf update

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
