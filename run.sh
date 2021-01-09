#!/usr/bin/env bash
ifconfig | grep enp0s8
echo "tcpreplay-edit -C --enet-smac=00:12:13:14:15:16,00:22:33:44:55:66 --enet-dmac=00:33:43:54:56:66,00:43:44:65:67:77 -i enp0s8 -N 192.168.1.0/8:$objip/8 ./data/0106-1331-mirai-choco-ndr1-192.168.1.155_en0-155_excluded.pcap"
      tcpreplay-edit -C --enet-smac=00:12:13:14:15:16,00:22:33:44:55:66 --enet-dmac=00:33:43:54:56:66,00:43:44:65:67:77 -i enp0s8 -N 192.168.1.0/8:$objip/8 ./data/0106-1331-mirai-choco-ndr1-192.168.1.155_en0-155_excluded.pcap