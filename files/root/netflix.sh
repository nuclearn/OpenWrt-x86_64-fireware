#!/bin/sh
killall -9 v2ray
iptables -F
iptables -X
iptables -t nat -F
iptables -t nat -X
iptables -t mangle -F
iptables -t mangle -X
iptables -t raw -F
iptables -t raw -X
ipset flush
sed -i 's/firewall\.nat/firewall\.user/' /etc/config/firewall
/etc/init.d/firewall restart
ip rule add fwmark 1 lookup 100
ip route add local 0.0.0.0/0 dev lo table 100
/root/brook/aliyun.sh
sysctl -p
