#!/sbin/zsh

/usr/bin/supervisord -c /etc/supervisor.d/supervisord.ini &
# picom -b
eval "sleep 10 && feh --bg-fill wallpapers/1.jpg" &
alacritty
