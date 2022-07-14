FROM archlinux:latest
LABEL maintainer="Marc Partensky"


RUN pacman -Syyyu --needed --noconfirm base-devel
RUN pacman -S --noconfirm git

RUN useradd --create-home --groups wheel --shell /usr/bin/zsh marc
RUN passwd -d marc
RUN echo "%wheel ALL=(ALL) ALL" >> /etc/sudoers

USER marc
WORKDIR /tmp
RUN git clone https://aur.archlinux.org/paru.git
WORKDIR /tmp/paru
RUN makepkg -si --noconfirm

RUN paru -Syu --noconfirm \
    zsh \
    neovim \
    stow \
    exa \
    bat \
    paruz \
    make \
    npm \
    go \
    openssh \
    podman \
    podman-compose

COPY entrypoint.sh /tmp/entrypoint.sh

USER root
RUN cat /etc/locale.gen
# RUN sed -i -e 's/en_US.UTF-8 UTF-8/fr_FR.UTF-8 UTF-8/' /etc/locale.gen
# RUN cat /etc/locale.gen
# RUN locale-gen
# RUN cat /etc/locale.gen
ENV LC_ALL fr_FR.UTF-8
ENV LANG fr_FR.UTF-8
ENV LANGUAGE fr_FR:fr

USER marc
ENV HOST docker

WORKDIR /home/marc
RUN mkdir git

RUN git clone https://github.com/marcpartensky/dotfiles git/dotfiles
RUN zsh git/dotfiles/main.sh
RUN make -C git/dotfiles stow
RUN touch .profile

RUN git clone https://github.com/marcpartensky/nvim ~/.config/nvim
RUN make -C ~/.config/nvim setup

ENTRYPOINT [ "/tmp/entrypoint.sh" ]
