FROM archlinux

WORKDIR /tmp
RUN pacman -Syu sudo git --noconfirm
RUN sudo pacman -S --needed base-devel --noconfirm
RUN git clone https://aur.archlinux.org/paru.git
RUN cd paru
RUN makepkg -si

COPY entrypoint.sh /tmp/entrypoint.sh
ENTRYPOINT [ "/tmp/entrypoint.sh" ]
