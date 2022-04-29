FROM archlinux:latest
LABEL maintainer="Marc Partensky"

RUN pacman -Syu --noconfirm sudo git zsh
RUN useradd --create-home --groups wheel --shell /usr/bin/zsh marc
RUN passwd -d marc
RUN echo "%wheel ALL=(ALL) ALL" >> /etc/sudoers

RUN pacman -S --needed base-devel --noconfirm

USER marc
WORKDIR /tmp
RUN git clone https://aur.archlinux.org/paru.git
WORKDIR /tmp/paru
RUN makepkg -si --noconfirm

ENV HOST docker

WORKDIR /home/marc
RUN mkdir git
RUN git clone https://github.com/marcpartensky/dotfiles git/dotfiles
RUN zsh git/dotfiles/main.sh
RUN touch .zshrc
RUN echo 'source $HOME/git/dotfiles/main.sh' > .zshrc

RUN paru -Syu --noconfirm neovim docker docker-compose openssh tigervnc dwm
COPY entrypoint.sh /tmp/entrypoint.sh

EXPOSE 22
ENTRYPOINT [ "/tmp/entrypoint.sh" ]
