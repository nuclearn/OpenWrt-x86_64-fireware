#!/bin/sh
opkg update
opkg list-upgradable | awk -F ' - ' '{print $1}' | xargs opkg upgrade
