FROM marcpartensky/arch:xorg
LABEL maintainer=<marc.partensky@gmail.com>

EXPOSE 5900 8080
ENV DISPLAY=:0.0

# Install packages
RUN paru -Syyy --noconfirm \
	net-tools \
	supervisor \
	alacritty \
    ly \
    feh \
	x11vnc \
    novnc \
    cron \
	xorg-server \
	# xorg-server-utils \
    ttf-meslo-nerd-font-powerlevel10k \
	xorg-server-xvfb

USER root
COPY crontab.txt /var/spool/cron/marc
RUN chmod 600 /var/spool/cron/marc

USER marc
COPY supervisord.ini /etc/supervisor.d/supervisord.ini

USER root
COPY entrypoint.sh entrypoint.sh
ENTRYPOINT [ ".//entrypoint.sh" ]
# ENTRYPOINT ["/usr/bin/supervisord", "-c", "/etc/supervisor.d/supervisord.ini"]
