echo -e "\033[32mRunning citrix.sh\033[0m"

sudo pacman -S icaclient

sudo cp ./wfica.desktop /usr/share/applications/wfica.desktop

# cd /opt/Citrix/ICAClient/keystore/cacerts/
# cp /etc/ca-certificates/extracted/tls-ca-bundle.pem .
# awk 'BEGIN {c=0;} /BEGIN CERT/{c++} { print > "cert." c ".pem"}' < tls-ca-bundle.pem

sudo cp /etc/ca-certificates/extracted/tls-ca-bundle.pem /opt/Citrix/ICAClient/keystore/cacerts/
sudo awk 'BEGIN {c=0;} /BEGIN CERT/{c++} { print > "cert." c ".pem"}' < tls-ca-bundle.pem

# https://wiki.archlinux.org/title/Citrix
