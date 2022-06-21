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
	xorg-server \
	# xorg-server-utils \
	xorg-server-xvfb


USER root
COPY supervisord.ini /etc/supervisor.d/supervisord.ini

RUN ls wallpapers

COPY entrypoint.sh entrypoint.sh

# Launch X11, x11vnc, dwm and noVNC from supervisor
# ENTRYPOINT ["/usr/bin/supervisord", "-c", "/etc/supervisor.d/supervisord.ini"]
ENTRYPOINT ["./entrypoint.sh"]
