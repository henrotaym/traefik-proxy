#!/usr/bin/env bash

hostname=henrotaym
mkcert -key-file traefik.key -cert-file traefik.crt \*.$hostname.ip-ddns.com
mkcert -install
mv traefik.crt ./certs/traefik.crt
mv traefik.key ./certs/traefik.key