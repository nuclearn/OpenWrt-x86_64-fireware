#!/bin/sh
killall -9 v2ray
killall -9 trojan
killall -9 xray
cp /root/trojan/tx/v2ray.crt /etc/ssl/certs/
/usr/bin/xray run -config /root/xray/tx.json > /dev/null 2>&1 &
