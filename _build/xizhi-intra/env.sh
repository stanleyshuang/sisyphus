#!/usr/bin/env bash
base_dir=$(dirname "$0")
export niout="en6: USB 10/100/1000 LAN"
export niin="en6: USB 10/100/1000 LAN"
export objip="172.17.29.200"
export otherip="172.17.29.201"

echo "niout=\"$niout\" niin=\"$niin\" objip=\"$objip\" otherip=\"$otherip\" vagrant "