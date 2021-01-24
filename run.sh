#!/usr/bin/env bash
base_dir=$(dirname "$0")

ifconfig | grep enp0s8
echo "tcpreplay -i enp0s8 $base_dir/data/0106-1331-mirai-choco-ndr1-192.168.1.155_en0-155_excluded.pcap"
      tcpreplay -i enp0s8 $base_dir/data/0106-1331-mirai-choco-ndr1-192.168.1.155_en0-155_excluded.pcap