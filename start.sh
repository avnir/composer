#!/bin/bash
set -e

PUID=${PUID:-500}
PGID=${PGID:-500}


groupmod -o -g "$PGID" www-data
usermod -o -u "$PUID" www-data


echo "
-------------------------
UID:    $(id -u www-data)
GID:    $(id -g www-data)
-------------------------
"


exec "$@"