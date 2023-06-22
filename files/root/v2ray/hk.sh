#!/bin/sh
/etc/init.d/chinadns restart
killall -9 v2ray
v2ray -config=/root/v2ray/conf/hk.pb > /dev/null 2>&1 &
