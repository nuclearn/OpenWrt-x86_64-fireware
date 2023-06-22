#!/bin/sh

cp /root/trojan/band/trojan.json /etc/trojan.json
cp /root/trojan/band/v2ray.crt /etc/v2ray.crt
/etc/init.d/trojan restart
