# unbound-docker
<p align="center">
	<a href="https://hub.docker.com/r/gentlehoneylover/unbound/"><img alt="Docker pulls" src="https://img.shields.io/docker/pulls/gentlehoneylover/unbound?logo=docker&label=Docker%20pulls"></a>
	<a href="https://github.com/GentleHoneyLover/unbound-docker"><img alt="GitHub stars" src="https://img.shields.io/github/stars/gentlehoneylover/unbound-docker?logo=GitHub&label=GitHub%20stars&color=gold"></a>
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