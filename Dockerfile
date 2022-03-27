FROM archlinux

RUN pacman -Syu

ENTRYPOINT [ "entrypoint.sh" ]
