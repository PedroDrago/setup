# README

## Assurance for slower computers:
Change sudo timeout at `visudo`:
```bash
Defaults        env_reset,timestamp_timeout=60
```
Also change the time for screen blocking to `never`, then reboot.

## Kickstart
```bash
sudo apt update && sudo apt upgrade -y && sudo apt install git -y && git clone https://github.com/PedroDrago/setup.git $HOME/setup && cd $HOME/setup && bash ./main.sh
```

# To-do
- [ ] Test on VM


# Tips
Following commnad can be used if missed secure boot MOK enroll
```bash
sudo update-secureboot-policy --enroll-key
```
