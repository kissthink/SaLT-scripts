#!/bin/sh
# vim: set syn=sh et ai sw=2 st=2 ts=2 tw=0:
cd "$(dirname "$0")"
[ "$(basename "$(pwd)")" = "liveenv" ] && cd ..
if [ -e MODULES.liveenv ]; then
  liveenv/create_txz.sh $(cat MODULES.liveenv)
else
  echo "You should create a MODULES.liveenv file with the needed module names." >&2
  exit 1
fi
