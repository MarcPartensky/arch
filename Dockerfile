FROM archlinux

COPY build.sh /tmp/build.sh
COPY entrypoint.sh /tmp/entrypoint.sh
RUN /tmp/build.sh

ENTRYPOINT [ "/tmp/entrypoint.sh" ]
