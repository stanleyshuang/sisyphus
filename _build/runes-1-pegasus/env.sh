#!/usr/bin/env bash
base_dir=$(dirname "$0")
export niout="en0: Wi-Fi (AirPort)"
export niin="en0: Wi-Fi (AirPort)"
export objip="172.20.10.7"
export otherip="172.20.10.8"

echo "niout=\"$niout\" niin=\"$niin\" objip=\"$objip\" otherip=\"$otherip\" vagrant "