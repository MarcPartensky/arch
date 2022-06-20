#!/sbin/zsh

/usr/bin/supervisord -c /etc/supervisor.d/supervisord.ini &
# picom -b
feh --bg-fill
alacritty
