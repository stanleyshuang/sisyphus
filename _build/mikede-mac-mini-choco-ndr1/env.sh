#!/usr/bin/env bash
base_dir=$(dirname "$0")
export niout="en0: 乙太網路"
export niin="en0: 乙太網路"
export objip="192.168.1.200"
export otherip="192.168.1.201"

echo "niout=\"$niout\" niin=\"$niin\" objip=\"$objip\" otherip=\"$otherip\" vagrant "