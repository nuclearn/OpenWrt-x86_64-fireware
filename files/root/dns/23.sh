#!/bin/sh
cp /etc/aaa/23 /etc/aaa/server.conf
killall -9 dnsmasq
killall -9 chinadns-ng
chinadns-ng -b 127.0.0.1 -l 5353 -c '127.0.0.1#2323' -t '23.247.138.41#2323' -4 chnroute -r > /dev/null 2>&1 &
chinadns-ng -b 127.0.0.1 -l 5353 -c '127.0.0.1#2323' -t '23.247.138.41#2323' -4 chnroute -r > /dev/null 2>&1 &
/usr/sbin/dnsmasq -C /etc/aaa/dnsmasq.conf > /dev/null 2>&1 &
