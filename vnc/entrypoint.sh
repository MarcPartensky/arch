#!/bin/sh

export WALLPAPERS_PATH=/home/marc/wallpapers
supervisord -c /opt/arch/supervisord.conf -l /var/log/supervisord.log
