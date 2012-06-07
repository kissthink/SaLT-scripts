#!/bin/sh
startdir="$1"
[ -n "$startdir" ] && [ -d "$startdir" ] || exit 1
cd "$(dirname "$0")"
HDIR="$startdir/liveenv"
PKGSDIR="$startdir/PKGS"
RDIR="$HDIR"/root
doinst="$HDIR"/doinst
modtxt="$HDIR"/MODIFICATIONS

cat <<EOF >> "$modtxt"
ssh
---
- ssh keypairs already generated (RSA 2048bits)


EOF

cat <<EOF >> "$doinst"
chown -R 0:0 etc/ssh
chmod u=rwx,go=rx etc/ssh
chmod u=rw,go=r etc/ssh/*
chmod go-r etc/ssh/*_key

EOF

mkdir -p "$RDIR"/etc/ssh
ssh-keygen -q -t rsa -N '' -C 'root@localhost' -f "$RDIR"/etc/ssh/ssh_host_rsa_key
