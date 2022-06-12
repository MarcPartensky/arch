FROM marcpartensky/arch:xorg
MAINTAINER marcpartensky <marc.partensky@gmail.com>

# Install packages
RUN paru -Syyy --noconfirm \
	# facter \
	# enlightenment \
	# mate-gtk3 \
	net-tools \
	# python \
	# python3-numpy \
	supervisor \
	alacritty \
	x11vnc \
    novnc \
	xorg-server \
	# xorg-server-utils \
	xorg-server-xvfb


# noVNC cooking
# WORKDIR /opt/
# RUN git clone https://github.com/kanaka/noVNC.git
# Avoid another checkout when launching noVnc
# WORKDIR /opt/noVNC/utils/
# RUN git clone https://github.com/kanaka/websockify

# Comfort
WORKDIR /var/log/supervisor/

ENV DISPLAY=:0.0

# Prepare X11, x11vnc, mate and noVNC from supervisor
COPY supervisord.ini /etc/supervisor.d/supervisord.ini

# Be sure that the noVNC port is exposed
EXPOSE 8080
EXPOSE 5900

RUN ls /etc/supervisor.d

# Launch X11, x11vnc, mate and noVNC from supervisor
USER root
ENTRYPOINT ["/usr/bin/supervisord", "-c", "/etc/supervisor.d/supervisord.ini"]
