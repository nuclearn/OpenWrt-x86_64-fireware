#!/bin/sh
killall -9 v2ray
cp /root/trojan/tx/trojan.json /etc/trojan.json
cp /root/trojan/tx/v2ray.crt /etc/v2ray.crt
/etc/init.d/trojan restart
