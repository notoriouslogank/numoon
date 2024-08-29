#!/bin/zsh

## DEBIAN

# backups
mkdir backups
sudo cp /etc/ssh/ssh_config ./backups/ssh_config
sudo cp ~/.zshrc ./backups/zshrc
sudo cp ~/.bashrc ./backups/bashrc
sudo cp ~/.tmux.conf ./backups/tmux.conf

# installs
sudo apt update && sudo apt full-upgrade -y
sudo apt install lsd tmux glances ranger toilet bpytop net-tools neofetch

# .configs
NeofetchConfig="files/config/NEOFETCH.conf"
mkdir -p .config/neofetch/ && mv $NeofetchConfig .config/neofetch/config.conf

# /etc/ssh/
SSHConfig="files/SSH_CONFIG"
mv $SSHConfig /etc/ssh/ssh_config

# .tmux.conf
TmuxConfig="files/TMUX.conf"
mv $TmuxConfig ~/.tmux.conf

# zshrc
Zshrc="files/ZSHRC"
mv $Zshrc ~/.zshrc
