#!/usr/bin/zsh

source /root/git/dotfiles/main.sh
vncserver :1
ssh-keygen -q -t rsa -N '' -f $HOME/.ssh/id_rsa
passwd
exec zsh
