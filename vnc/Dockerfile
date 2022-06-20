FROM marcpartensky/arch:xorg
LABEL maintainer=<marc.partensky@gmail.com>

# Install packages
RUN paru -Syyy --noconfirm \
	net-tools \
	supervisor \
	alacritty \
	x11vnc \
    novnc \
	xorg-server \
	# xorg-server-utils \
	xorg-server-xvfb


# Comfort
WORKDIR /var/log/supervisor/
USER root
# RUN chown -R marc:marc /var/log/supervisor


ENV DISPLAY=:0.0

# Prepare X11, x11vnc, mate and noVNC from supervisor
COPY supervisord.ini /etc/supervisor.d/supervisord.ini

# Be sure that the noVNC port is exposed
EXPOSE 5900 8080

COPY entrypoint.sh entrypoint.sh

# Launch X11, x11vnc, dwm and noVNC from supervisor
# ENTRYPOINT ["/usr/bin/supervisord", "-c", "/etc/supervisor.d/supervisord.ini"]
ENTRYPOINT ["./entrypoint.sh"]
