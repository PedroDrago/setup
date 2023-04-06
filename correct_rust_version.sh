#get line that's written in .zshrc defining path with old version
zshrc_old=$(cat .zshrc | grep installs/rust)
#get new version that was installed with adsf
latest_version=$(asdf list rust)
#create the string to be ready to be placed in .zshrc, the :2 is to deleting an * and a space from the version string
zshrc_new="path+='/home/drago/.asdf/installs/rust/${latest_version:2}/bin/'"
#substitute old string for new string in .zshrc, pipes are for not having troubles with /
sed -i "s|$zshrc_old|$zshrc_new|" $HOME/.zshrc
