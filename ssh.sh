echo "\033[32mRunning ssh.sh\033[0m"
ansible-vault decrypt $HOME/setup/.ssh/id_ed25519
mv $HOME/setup/.ssh/* $HOME/.ssh/
