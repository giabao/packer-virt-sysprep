#!/usr/bin/env bash
#
# Remove dynamically created apt files
#
# apt will recreate these files automatically if needed
set -o errexit

# APT lists. APT will recreate these on the first 'apt update'
apt_lists=/var/lib/apt/lists
if [ -d "${apt_lists}" ]; then
    find "${apt_lists}" -type f | xargs rm -f
fi

exit 0
