#!/usr/bin/env bash

exec /usr/sbin/sshd -D &

. /entrypoint.sh