FROM marcpartensky/arch:xorg
LABEL maintainer=<marc.partensky@gmail.com>

EXPOSE 5900 8080
ENV DISPLAY=:0.0

# Install packages
RUN paru -Syyy --noconfirm \
	net-tools \
	supervisor \
	alacritty \
    feh \
	x11vnc \
    novnc \
    cron \
	xorg-server \
	# xorg-server-utils \
    ttf-meslo-nerd-font-powerlevel10k \
	xorg-server-xvfb


USER marc
COPY supervisord.ini /etc/supervisor.d/supervisord.ini

COPY crontab.txt /var/crontab.txt
RUN crontab /var/crontab.txt
RUN chmod 600 /etc/crontab

ENTRYPOINT ["/usr/bin/supervisord", "-c", "/etc/supervisor.d/supervisord.ini"]
