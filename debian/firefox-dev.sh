echo -e "\033[32mRunning firefox-dev.sh\033[0m"
set -e

curl "https://download-installer.cdn.mozilla.net/pub/devedition/releases/129.0b2/linux-x86_64/pt-BR/firefox-129.0b2.tar.bz2" -o ./firefox.tar.bz2
tar -xvf ./firefox.tar.bz2
sudo mv ./firefox /opt/firefox-dev
sudo ln -s /opt/firefox-dev/firefox /usr/bin/firefox-dev
rm -rf ./firefox.tar.bz2
