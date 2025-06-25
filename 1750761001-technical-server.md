---
id: 1750761001-technical-server
aliases:
  - Technical Server
tags:
  - server
  - mac mini
---

# Technical Server

- Mac Mini M4
- Portainer

## Local only

- [ ] Gitea
- [ ] Tailscale
- [ ] Syncthing
- [ ] ollama
- [ ] openweb-ui
- [ ] photoprism
- [ ] uptime kuma
- [ ] nextcloud
- [ ] beaver habits

## Exposed

- [ ] yourls
- [ ] chibisafe
- [ ] privatebin
- [ ] beelzebub-honeypot

# Misc

- caddy reverse proxy
- buy own domain for serving

# Ideal workflow

- I can push my files from nvim or git generally to my gitea mac mini server from both my local network and when im non-local (via tailscale) - all local instances i.e syncthing, gitea, ollama and open-web-ui should have SSL
- I plan to expose some services outside of my local network and hook them up to a domain name however I want to do this without exposing my ip address
