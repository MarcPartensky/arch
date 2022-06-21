#!/sbin/zsh


eval "sleep 10 && wpp -n" &
/usr/bin/supervisord -c /etc/supervisor.d/supervisord.ini
