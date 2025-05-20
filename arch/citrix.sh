echo -e "\033[32mRunning citrix.sh\033[0m"

yay -S icaclient

sudo cp $HOME/setup/arch/wfica.desktop /usr/share/applications/wfica.desktop # TODO: alter

cd /opt/Citrix/ICAClient/keystore/cacerts/ && cp /etc/ca-certificates/extracted/tls-ca-bundle.pem . && awk 'BEGIN {c=0;} /BEGIN CERT/{c++} { print > "cert." c ".pem"}' < tls-ca-bundle.pem

sudo ln -s /opt/Citrix/ICAClient/wfica /usr/bin/citrix

# https://wiki.archlinux.org/title/Citrix
