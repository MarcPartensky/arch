#!/sbin/zsh

export WALLPAPERS_PATH=/home/marc/wallpapers
# export DISPLAY=:0
# Xephyr :1 -extension MIT-SHM
supervisord -l /tmp/supervisord.log
