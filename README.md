# unbound-docker
<p align="center">
	<a href="https://hub.docker.com/r/gentlehoneylover/unbound/"><img alt="Docker pulls" src="https://img.shields.io/docker/pulls/gentlehoneylover/unbound?logo=docker&label=Docker%20pulls"></a>
	<a href="https://github.com/GentleHoneyLover/unbound-docker"><img alt="GitHub stars" src="https://img.shields.io/github/stars/gentlehoneylover/unbound-docker?style=flat&label=GitHub%20stars&color=gold"></a>
	<a href="https://github.com/GentleHoneyLover/unbound-docker"><img alt="GitHub issues" src="https://img.shields.io/github/issues/gentlehoneylover/unbound-docker?logo=GitHub&label=GitHub%20issues"></a>
	<a href="https://actions-badge.atrox.dev/gentlehoneylover/unbound-docker/goto?ref=master"><img alt="GitHub Actions" src="https://img.shields.io/endpoint.svg?url=https%3A%2F%2Factions-badge.atrox.dev%2Fgentlehoneylover%2Funbound-docker%2Fbadge%3Fref%3Dmaster&style=flat" /></a>
</p><br>

An Unbound Docker image based on [alpinelinux/unbound image](https://hub.docker.com/r/alpinelinux/unbound/tags) with root.hints and config file included. 

<p align="center">
  <img width="100" src="https://nlnetlabs.nl/static/logos/Unbound/Mark_Unbound_FC_Shaded.svg" alt="Unbound"><br><br>
</p>

## What is Unbound

Unbound is a validating, recursive, caching DNS resolver. It is designed to be
fast and lean and incorporates modern features based on open standards. You can learn more about Unbound by reading the  [official documentation](https://unbound.docs.nlnetlabs.nl/).

## Unbound configuration

All of Unbound's configuration options are described in the `unbound.conf(5)`
man page, which is available on the Unbound
[official documentation page](https://unbound.docs.nlnetlabs.nl/en/latest/manpages/unbound.conf.html)
for the latest version.

An example configuration file, with minimal documentation, is located in
[doc/example.conf](https://github.com/NLnetLabs/unbound/blob/master/doc/example.conf.in).

## Installation
You can pull it from the Docker Hub via:
```sh
docker pull docker.io/gentlehoneylover/unbound:latest
```
Run it via Docker CLI or docker-compose (examples below).

A fresh root.hints and unbound.conf example (with documentation) are included. To change the config file, mount `/etc/unbound/unbound.conf.d` as a volume.

## Example docker CLI command:
```sh
docker run -d \
  --name=unbound \
  --restart unless-stopped \
	--cap-add NET_ADMIN \
  -p 53:53/tcp \
  -p 53:53/udp \
  -v /path/to/volumes/unbound/:/etc/unbound/unbound.conf.d \
  docker.io/gentlehoneylover/unbound:latest
```

## Example compose file:
```yaml
services:
  unbound:
    container_name: unbound
    image: docker.io/gentlehoneylover/unbound:latest
    restart: unless-stopped
    cap_add:
      - NET_ADMIN
    ports:
      - 53:53/tcp
      - 53:53/udp
    volumes:
      - /path/to/volumes/unbound/:/etc/unbound/unbound.conf.d
```

## Ports
|  Port   | What it is for                                                         |
| :-----: | ---------------------------------------------------------------------- |
| `53`  | Default DNS port — can be chaged in unbound.conf                         |

## Volumes
|     Volume     | What it is for                                                       |
| :------------: | -------------------------------------------------------------------- |
|   `/etc/unbound/unbound.conf.d`    | Folder where unbound config file lives inside the container |