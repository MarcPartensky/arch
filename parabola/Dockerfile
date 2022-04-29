FROM marcpartensky/arch

USER root
RUN sed -i 's/#RemoteFileSigLevel = Required/RemoteFileSigLevel = Never/' /etc/pacman.conf

RUN pacman-key --init

RUN yes | pacman -U https://www.parabola.nu/packages/core/i686/archlinux32-keyring-transition/download/
RUN yes | pacman -U https://www.parabola.nu/packages/libre/x86_64/parabola-keyring/download
RUN yes | pacman -U https://www.parabola.nu/packages/libre/x86_64/pacman-mirrorlist/download
