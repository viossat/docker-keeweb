#!/bin/sh
set -e

WEBDAV_USERNAME=${WEBDAV_USERNAME:-$(tr -cd [:alnum:] < /dev/urandom | fold -w20 | head -n1)}
WEBDAV_PASSWORD=${WEBDAV_PASSWORD:-$(tr -cd [:alnum:] < /dev/urandom | fold -w20 | head -n1)}

htpasswd -cbB /etc/nginx/htpasswd.webdav "$WEBDAV_USERNAME" "$WEBDAV_PASSWORD"

exec "$@"
