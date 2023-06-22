#!/bin/sh
/etc/init.d/chinadns restart

cp /root/trojan/band/forword.json /etc/trojan.json
cp /root/trojan/band/v2ray.crt /etc/v2ray.crt
/etc/init.d/trojan restart
