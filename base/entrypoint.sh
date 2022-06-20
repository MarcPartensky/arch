#!/usr/bin/zsh

ssh-keygen -q -t rsa -N '' -f $HOME/.ssh/id_rsa
exec zsh
