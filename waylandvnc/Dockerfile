FROM marcpartensky/arch:xorg
LABEL maintainer=<marc.partensky@gmail.com>

RUN paru -Syyyu --noconfirm \
    hyprland-bin \
    hyprpaper-git \
    wayvnc \
    waysct \
    waybar \
    wpaperd \
    grim \
    wf-recorder \
    swappy

# waysct, wpaperd

USER root
COPY crontab.txt /var/spool/cron/marc
RUN chmod 600 /var/spool/cron/marc

USER marc
COPY entrypoint.sh /opt/arch/
COPY supervisord.conf /etc/supervisord.conf
ENTRYPOINT [ "/opt/arch/entrypoint.sh" ]
