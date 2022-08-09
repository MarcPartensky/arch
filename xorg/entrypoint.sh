#!/sbin/zsh

export WALLPAPERS_PATH=/home/marc/wallpapers
# export DISPLAY=:0
# Xephyr :1 -extension MIT-SHM
/usr/bin/supervisord -c /etc/supervisor.d/supervisord.conf
