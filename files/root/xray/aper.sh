#!/bin/sh
killall -9 v2ray
killall -9 trojan
killall -9 xray
cp /root/trojan/aper/v2ray.crt /etc/ssl/certs/
/usr/bin/xray run -config /root/xray/aper.json > /dev/null 2>&1 &
