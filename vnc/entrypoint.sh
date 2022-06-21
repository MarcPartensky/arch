#!/sbin/zsh


eval "sleep 10 && .local/bin/wpp -n" &
/usr/bin/supervisord -c /etc/supervisor.d/supervisord.ini
