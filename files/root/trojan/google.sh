#!/bin/sh
killall -9 v2ray
cp /root/trojan/google/trojan.json /etc/trojan.json
cp /root/trojan/google/v2ray.crt /etc/v2ray.crt
/etc/init.d/trojan restart
