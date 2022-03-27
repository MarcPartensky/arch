#!/usr/bin/zsh

source /root/git/dotfiles/main.sh
ssh-keygen -t rsa -N ''
passwd
exec zsh
