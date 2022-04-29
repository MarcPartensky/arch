FROM marcpartensky/arch

RUN sed -i 's/#RemoteFileSigLevel = Required/RemoteFileSigLevel = Never/' /etc/pacman.conf
RUN cat /etc/pacman.conf

RUN paru -U https://www.parabola.nu/packages/core/i686/archlinux32-keyring-transition/download/
RUN paru -U https://www.parabola.nu/packages/libre/x86_64/parabola-keyring/download
RUN paru -U https://www.parabola.nu/packages/libre/x86_64/pacman-mirrorlist/download
