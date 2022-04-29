#!/usr/bin/zsh

source /root/git/dotfiles/main.sh
ssh-keygen -q -t rsa -N '' -f $HOME/.ssh/id_rsa
exec zsh
