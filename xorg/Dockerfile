FROM marcpartensky/arch

RUN paru -Syyy --noconfirm \
	net-tools \
	supervisor \
    firefox \
	alacritty \
    xorg-xinit \
	xorg-server \
	# xorg-server-utils \
	xorg-server-xvfb


# dwm build dependencies
RUN paru -S --noconfirm libxft libxinerama

WORKDIR /home/marc
RUN git clone https://github.com/marcpartensky/dwm git/dwm
RUN make -C git/dwm
USER root
RUN make -C git/dwm install
USER marc

ENTRYPOINT [ "firefox" ]
