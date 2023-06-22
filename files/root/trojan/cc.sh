#!/bin/sh

cp /root/trojan/cc/trojan.json /etc/trojan.json
cp /root/trojan/cc/v2ray.crt /etc/v2ray.crt
/etc/init.d/trojan restart
