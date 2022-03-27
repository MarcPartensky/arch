FROM archlinux

RUN pacman -Syu sudo git zsh --noconfirm
RUN useradd --create-home --groups wheel --shell /usr/bin/zsh marc
RUN passwd -d marc
RUN echo "%wheel ALL=(ALL) ALL" >> /etc/sudoers

RUN pacman -S --needed base-devel --noconfirm

USER marc
WORKDIR /tmp
RUN git clone https://aur.archlinux.org/paru.git
WORKDIR /tmp/paru
RUN makepkg -osi --noconfirm

RUN paru -Syu --noconfirm neovim docker docker-compose
ENV HOST docker

WORKDIR /home/marc
RUN mkdir git
RUN git clone https://github.com/marcpartensky/dotfiles /root/git/dotfiles
# SHELL ["zsh"]
RUN zsh /root/git/dotfiles/main.sh
RUN touch /root/.zshrc
RUN echo "source /root/git/dotfiles/main.sh" > /root/.zshrc

COPY entrypoint.sh /tmp/entrypoint.sh
ENTRYPOINT [ "/tmp/entrypoint.sh" ]
