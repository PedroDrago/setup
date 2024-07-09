echo -e "\033[32mRunning ssh.sh\033[0m"
ansible-vault decrypt $HOME/setup/.ssh/id_rsa
mv $HOME/setup/.ssh/* $HOME/.ssh/
