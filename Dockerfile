FROM debian:jessie
MAINTAINER Jeffrey Boehm "jeff@ressourcenkonflikt.de"

RUN apt-get update && \
    apt-get install -y --no-install-recommends vpnc && \
    rm -rf /var/lib/apt/lists/* /var/run && \
    ln -sf /tmp /var/run

COPY rootfs/ /

CMD ["/usr/local/bin/entrypoint.sh"]
