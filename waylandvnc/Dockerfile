FROM marcpartensky/arch:xorg
LABEL maintainer=<marc.partensky@gmail.com>

USER marc
RUN paru -Syyyu --noconfirm \
    hyprland-bin \
    hyprpaper-git \
    wayvnc \
    waybar \
    wpaperd \
    grim \
    wf-recorder \
    swappy

RUN go env -w GO111MODULE=off
RUN go get -u github.com/d4l3k/go-sct/cmd/waysct

# waysct, wpaperd

USER root
COPY crontab.txt /var/spool/cron/marc
RUN chmod 600 /var/spool/cron/marc

USER marc
COPY entrypoint.sh /opt/arch/
COPY supervisord.conf /etc/supervisord.conf
ENTRYPOINT [ "/opt/arch/entrypoint.sh" ]
