#!/bin/sh
cd "$(dirname "$0")"
HDIR="$(readlink -f "$PWD"/../..)"
RDIR="$HDIR"/root
doinst="$HDIR"/doinst
modtxt="$HDIR"/MODIFICATIONS

cat <<EOF >> "$modtxt"
persistence-wizard
------------------
- add a Persistence Wizard icon in the user 'one' desktop.


EOF

PERSISTENCEWIZARD="$(readlink -f "$(ls -1 "$HDIR"/../PKGS/persistence-wizard-*.txz 2>/dev/null)")"
if [ -n "$PERSISTENCEWIZARD" ]; then
  tar xf "$PERSISTENCEWIZARD" usr/share/applications
  mkdir -p "$RDIR"/home/one/Desktop
  cp usr/share/applications/*.desktop "$RDIR"/home/one/Desktop/
  rm -rf usr
else
  echo "Cannot add $0 because package persistence-wizard is missing in PKGS." >&2
  exit 1
fi