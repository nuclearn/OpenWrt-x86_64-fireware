#!/bin/sh
if [ $# -lt 1 ]; then
        echo $0 need a parameter
        exit 0
fi
ADDR=$1
TMPSTR=`ping ${ADDR} -c 1 | sed '1{s/[^(]*(//;s/).*//;q}'`
ipset add chnroute ${TMPSTR}
