FROM marcpartensky/arch

RUN paru -Syyy --noconfirm \
	# facter \
	# enlightenment \
	# mate-gtk3 \
	net-tools \
	# python \
	# python3-numpy \
	supervisor \
	alacritty \
	# x11vnc \
	xorg-server \
	# xorg-server-utils \
	xorg-server-xvfb

WORKDIR /home/marc
RUN git clone https://github.com/marcpartensky/dwm git/dwm
RUN make -C git/dwm
USER root
RUN make -C git/dwm install
USER marc

ENTRYPOINT [ "startx" ]
