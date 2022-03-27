FROM archlinux

COPY build.sh /tmp/build.sh
COPY entrypoint.sh /tmp/entrypoint.sh
RUN sh /tmp/build.sh

ENTRYPOINT [ "/tmp/entrypoint.sh" ]
#!/bin/dash

pacman -Syu sudo --noconfirm
sudo pacman -S --needed base-devel --noconfirm
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
