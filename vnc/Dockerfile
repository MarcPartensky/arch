FROM marcpartensky/arch:xorg
LABEL maintainer=<marc.partensky@gmail.com>

USER marc
EXPOSE 5900 8080
ENV DISPLAY=:0.0

# Install packages
RUN paru -Syyyu --noconfirm \
	x11vnc \
    novnc \
    cron \
	# xorg-server \
	# xorg-server-utils \
    ttf-meslo-nerd-font-powerlevel10k \
	# xorg-server-xvfb
    xf86-video-dummy

USER root
COPY crontab.txt /var/spool/cron/marc
RUN chmod 600 /var/spool/cron/marc

USER marc
COPY supervisord.ini /etc/supervisor.d/supervisord.ini

USER root
RUN pwd
RUN ls
COPY entrypoint.sh /root/entrypoint.sh
ENTRYPOINT [ "/root/entrypoint.sh" ]
# ENTRYPOINT ["/usr/bin/supervisord", "-c", "/etc/supervisor.d/supervisord.ini"]
