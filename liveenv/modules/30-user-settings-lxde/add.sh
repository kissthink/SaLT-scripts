#!/bin/sh
cd "$(dirname "$0")"
HDIR="$(readlink -f "$PWD"/../..)"
RDIR="$HDIR"/root
doinst="$HDIR"/doinst
modtxt="$HDIR"/MODIFICATIONS

cat <<EOF >> "$modtxt"
user-settings-lxde
------------------
- user 'one' with common user-settings for LXDE


EOF

USERSETTINGS_LXDE="$(readlink -f "$(ls -1 "$HDIR"/../PKGS/user-settings-lxde-[0-9]*.txz 2>/dev/null)")"
if [ -n "$USERSETTINGS_LXDE" ]; then
  tar -C "$RDIR" -xf "$USERSETTINGS_LXDE" etc/skel
else
  echo "Cannot add $0 because package user-settings-lxde is missing in PKGS." >&2
  exit 1
fi
cp -r "$RDIR"/etc/skel/* "$RDIR"/etc/skel/.??* "$RDIR"/home/one/ 2>/dev/null
