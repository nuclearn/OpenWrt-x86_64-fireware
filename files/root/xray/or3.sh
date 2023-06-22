#!/bin/sh
killall -9 v2ray
killall -9 trojan
killall -9 xray
cp /root/trojan/or3/v2ray.crt /etc/ssl/certs/
/usr/bin/xray run -config /root/xray/or3.json > /dev/null 2>&1 &
