FROM alpinelinux/unbound:latest

LABEL maintainer="gentlehoneylover"

# Fetch root hints
RUN wget -O /etc/unbound/root.hints https://www.internic.net/domain/named.root

# Copy local unbound.conf into place
COPY unbound.conf /etc/unbound/unbound.conf.d/unbound.conf


