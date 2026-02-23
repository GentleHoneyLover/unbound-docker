FROM alpinelinux/unbound:latest

LABEL maintainer="gentlehoneylover"

# Fetch root hints and config example
RUN \
 wget -O /etc/unbound/root.hints https://www.internic.net/domain/named.root && \
 wget -O /var/tmp/unbound.conf https://github.com/NLnetLabs/unbound/raw/refs/heads/master/doc/example.conf.in && \
 echo "include: unbound.conf.d/*" > /etc/unbound/unbound.conf

# Add new entrypoint script
COPY entrypoint.sh /usr/local/bin/entrypoint.sh