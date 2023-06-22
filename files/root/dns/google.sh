#!/bin/sh
cp /etc/aaa/google /etc/aaa/server.conf
killall -9 dnsmasq
killall -9 chinadns-ng
chinadns-ng -b 127.0.0.1 -l 5353 -c '127.0.0.1#2323' -t '35.241.74.244#2323' -4 chnroute -r > /dev/null 2>&1 &
chinadns-ng -b 127.0.0.1 -l 5353 -c '127.0.0.1#2323' -t '35.241.74.244#2323' -4 chnroute -r > /dev/null 2>&1 &
chinadns-ng -b 127.0.0.1 -l 5353 -c '127.0.0.1#2323' -t '35.241.74.244#2323' -4 chnroute -r > /dev/null 2>&1 &
/usr/sbin/dnsmasq -C /etc/aaa/dnsmasq.conf &
