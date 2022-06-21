FROM marcpartensky/arch

RUN paru -Syyy --noconfirm \
	net-tools \
	supervisor \
    firefox \
    picom \
    ttf-menlo-powerline-git \
    ttf-meslo \
	alacritty \
    xorg-xinit \
	xorg-server \
	# xorg-server-utils \
	xorg-server-xvfb


# dwm build dependencies
RUN paru -S --noconfirm libxft libxinerama

# setup dwn
RUN git clone https://github.com/marcpartensky/dwm ~/git/dwm
RUN make -C git/dwm
USER root
RUN make -C git/dwm install
USER marc

# setup dwmblocks
RUN git clone https://github.com/marcpartensky/dwmblocks ~/git/dwmblocks
RUN make -C git/dwmblocks
USER root
RUN make -C git/dwmblocks install
USER marc

# setup wallpapers
RUN git clone https://github.com/marcpartensky/wallpapers ~/wallpapers

ENTRYPOINT [ "alacritty" ]
