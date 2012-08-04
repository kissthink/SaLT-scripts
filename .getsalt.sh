#!/bin/sh
#
# Used to download the correct version of SaLT.

cd "$(dirname "$0")"
SALT_VER='0.2.0'
SALT_URL='git@github.com:jrd/SaLT.git'
if [ -d salt ]; then
  rm -rf salt || echo "salt directory cannot be removed, check permissions" >&2
fi
# Get the repo from git without checking-out any branch.
git clone -n "$SALT_URL" salt
cd salt
# Getting the commit referenced by the tag.
git checkout tags/"$SALT_VER"
# Removing the git handling of the directory.
rm -rf .git
