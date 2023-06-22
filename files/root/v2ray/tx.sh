#!/bin/sh
killall -9 v2ray
killall -9 trojan
v2ray -config=/root/v2ray/conf/tx.pb > /dev/null 2>&1 &
