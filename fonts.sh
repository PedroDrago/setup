echo -e "\033[32mRunning fonts.sh\033[0m"
mkdir -p $HOME/.local/share/fonts
#https://www.nerdfonts.com/font-downloads
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/JetBrainsMono.zip
mv ./JetBrainsMono.zip $HOME/.local/share/fonts/JetBrainsMono.zip
unzip $HOME/.local/share/fonts/JetBrainsMono.zip -d $HOME/.local/share/fonts/
