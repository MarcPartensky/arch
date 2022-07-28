FROM marcpartensky/arch

RUN paru -Syyy --noconfirm \
	net-tools \
	supervisor \
    firefox \
    picom \
    rofi \
    feh \
    # ttf-menlo-powerline-git \
    # ttf-meslo \
    ttf-meslo-nerd-font-powerlevel10k \
	alacritty \
    xorg-xinit \
	xorg-server \
	# xorg-server-utils \
	# xorg-server-xvfb \
    xorg-server-xephyr


# dwm build dependencies
RUN paru -S --noconfirm libxft libxinerama

# setup dwn
RUN git clone https://github.com/marcpartensky/dwm git/dwm
RUN sed -i 's/#define MODKEY Mod4Mask/#define MODKEY Mod1Mask/' git/dwm/config.h
RUN sed -i 's/MODKEY,                       XK_d/MODKEY,                     XK_x/' git/dwm/config.h
RUN make -C git/dwm
USER root
RUN make -C git/dwm install
USER marc

# setup dwmblocks
RUN git clone https://github.com/marcpartensky/dwmblocks git/dwmblocks
RUN make -C git/dwmblocks
USER root
RUN make -C git/dwmblocks install
USER marc

# setup wallpapers
RUN git clone https://github.com/marcpartensky/wallpapers wallpapers

# setup shell scripts
RUN git clone https://github.com/marcpartensky/shell git/shell
RUN make -C git/shell

USER root
COPY entrypoint.sh entrypoint.sh
COPY supervisord.ini /etc/supervisor.d/supervisord.ini
ENTRYPOINT [ "./entrypoint.sh" ]
# ENTRYPOINT [ "DISPLAY=:0", "Xephyr", ":1" ]
