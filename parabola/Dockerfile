FROM marcpartensky/arch

USER root
RUN pacman -Scc

RUN sed -i 's/#RemoteFileSigLevel = Required/RemoteFileSigLevel = Never/' /etc/pacman.conf

RUN pacman-key --init

RUN yes | pacman -U https://www.parabola.nu/packages/core/i686/archlinux32-keyring-transition/download/
RUN yes | pacman -U https://www.parabola.nu/packages/libre/x86_64/parabola-keyring/download
RUN yes | pacman -U https://www.parabola.nu/packages/libre/x86_64/pacman-mirrorlist/download

RUN sed -i 's/#RemoteFileSigLevel = Never/RemoteFileSigLevel = Required DatabaseOptional/' /etc/pacman.conf

RUN cp -vr /etc/pacman.d/mirrorlist.pacnew /etc/pacman.d/mirrorlist

RUN curl -sO https://git.parabola.nu/abslibre.git/plain/libre/pacman/pacman.conf.$(uname -m)
RUN cp /etc/pacman.conf /etc/pacman.conf.orig
RUN mv pacman.conf.$(uname -m) /etc/pacman.conf

RUN sed -i 's/Include = \/etc\/pacman\.d\/\*\.conf//' /etc/pacman.conf

RUN pacman -Scc
RUN pacman -Syy
# cant make it work
# RUN pacman-key --refresh

RUN yes | pacman -Syuu your-freedom pacman
# RUN yes | pacman -Syuu your-freedom pacman libelogind udev-init-scripts
# RUN yes | pacman -Syuu your-privacy
