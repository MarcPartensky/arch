#!/sbin/zsh

export WALLPAPERS_PATH=/home/marc/wallpapers
supervisord -c supervisord.conf -l  supervisord.log
