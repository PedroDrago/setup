echo -e "\033[32mRunning citrix.sh\033[0m"

yay -S icaclient

sudo cp $HOME/setup/arch/wfica.desktop /usr/share/applications/wfica.desktop # TODO: alter

cd /opt/Citrix/ICAClient/keystore/cacerts/ && sudo cp /etc/ca-certificates/extracted/tls-ca-bundle.pem . && sudo awk 'BEGIN {c=0;} /BEGIN CERT/{c++} { print > "cert." c ".pem"}' < tls-ca-bundle.pem

sudo ln -s /opt/Citrix/ICAClient/wfica /usr/bin/citrix

# TODO: add final step that is printed in red and i forgot to save

# https://wiki.archlinux.org/title/Citrix
