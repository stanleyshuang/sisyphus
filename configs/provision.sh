#!/usr/bin/env bash

echo ">>> Installing packages... $[$(date +%s) - $(stat -c %Z /var/cache/apt/pkgcache.bin)]"
export DEBIAN_FRONTEND=noninteractive

if [ "$[$(date +%s) - $(stat -c %Z /var/cache/apt/pkgcache.bin)]" -ge 3 ]; then
echo "apt-get update"
      apt-get update

fi
echo "source ~/.bashrc"
      source ~/.bashrc

echo ">>> Install Tcpreplay"
echo "apt-get install tcpreplay"
      apt-get install tcpreplay

echo ">>> Done"
