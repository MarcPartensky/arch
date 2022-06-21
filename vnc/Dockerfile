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
    ttf-meslo-nerd-font-powerlevel10k \
	xorg-server-xvfb


USER marc
COPY supervisord.ini /etc/supervisor.d/supervisord.ini

RUN ls wallpapers

COPY entrypoint.sh entrypoint.sh

ENTRYPOINT ["/usr/bin/supervisord", "-c", "/etc/supervisor.d/supervisord.ini"]
