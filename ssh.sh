echo -e "\033[32mRunning ssh.sh\033[0m"
ansible-vault decrypt $HOME/setup/.ssh/id_rsa
cp $HOME/setup/.ssh/id_rsa $HOME/.ssh/
cp $HOME/setup/.ssh/id_rsa.pub $HOME/.ssh/
# For some reason this did not work with `mv $HOME/setup/.ssh/*`, I hard coded both keys but the ideal would be a wildcard, for the case I have multiple ssh keys in `.ssh` directory
