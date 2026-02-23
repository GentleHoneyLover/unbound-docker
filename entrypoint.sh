#!/bin/sh

for i in server control; do
	if [ ! -f /etc/unbound/unbound_$i.key ] || [ ! -f /etc/unbound/unbound_$i.pem ]; then
		unbound-control-setup && break
	fi
done

# Create config file if not already present
if [ ! -f /etc/unbound/unbound.conf.d/unbound.conf ]; then
	mv /var/tmp/unbound.conf /etc/unbound/unbound.conf.d/unbound.conf
fi

unbound-anchor -a /etc/unbound/root.key
chown -R unbound:unbound /etc/unbound

exec unbound -dp