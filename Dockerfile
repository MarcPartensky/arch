FROM archlinux

RUN pacman -Syu sudo git --noconfirm

RUN useradd --create-home marc
RUN usermod -aG wheel marc
RUN echo "%wheel ALL=(ALL) ALL" >> /etc/sudoers

RUN pacman -S --needed base-devel --noconfirm

USER marc
RUN chpasswd <(echo password)
WORKDIR /tmp
RUN git clone https://aur.archlinux.org/paru.git
WORKDIR /tmp/paru
RUN echo password | makepkg -si -S
USER root
RUN pacman -Syu zsh --noconfirm
USER marc

# RUN which paru

COPY entrypoint.sh /tmp/entrypoint.sh
ENTRYPOINT [ "/tmp/entrypoint.sh" ]
