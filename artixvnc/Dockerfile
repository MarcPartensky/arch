FROM marcpartensky/artix
LABEL maintainer=<marc.partensky@gmail.com>

USER marc
EXPOSE 5900 8080
ENV DISPLAY=:0.0

# Install packages
RUN paru -Syyyu --noconfirm \
    # xorg-server required for xdummy
    Hyprland-bin \
	tigervnc \
    novnc \
    cron \
    ttf-meslo-nerd-font-powerlevel10k

USER root
COPY crontab.txt /var/spool/cron/marc
RUN chmod 600 /var/spool/cron/marc

USER marc
COPY entrypoint.sh /opt/arch/
COPY supervisord.conf /etc/supervisord.conf
# ENTRYPOINT [ "/opt/arch/entrypoint.sh" ]
