#!/bin/sh

cp /root/trojan/altan/trojan.json /etc/trojan.json
cp /root/trojan/altan/v2ray.crt /etc/v2ray.crt
/etc/init.d/trojan restart
