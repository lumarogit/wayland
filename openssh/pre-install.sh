#!/bin/sh

getent group sshd >/dev/null || groupadd -g 50 sshd
getent passwd sshd >/dev/null || useradd -c "sshd PrivSep" -d /var/lib/sshd -g sshd -s /bin/false -u 50 sshd
