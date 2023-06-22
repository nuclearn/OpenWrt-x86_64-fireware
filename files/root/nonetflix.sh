#!/bin/sh
killall -9 brook_linux_arm7
iptables -F
iptables -X
iptables -t nat -F
iptables -t nat -X
iptables -t mangle -F
iptables -t mangle -X
iptables -t raw -F
iptables -t raw -X
ipset flush
sed -i 's/firewall\.user/firewall\.nat/' /etc/config/firewall
/etc/init.d/firewall restart
ip rule del prio 32765
/root/v2ray/ggc.sh
sysctl -p
