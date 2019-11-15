#!/bin/bash

# Abort on error // swap with -x to trace execution (debug)
set -e

# Load global config
#source "$(cd "$(dirname "$0")"; pwd -P)/../myNetwork"
ldconfig

# Add the addresses for our public interfaces towards BGP peers
%for interface in data['interfaces']:
ip link set dev ${interface['name']} up
ip -6 addr add ${interface['addr']} dev ${interface['name']}

%endfor

# The BELNET - BXL link, defaults to fd00:255:beb1::be/64
#ip address add dev BELNET-eth0 "fde4:2:beb1::be/64"

# Assign an IP address (and an associated subnet prefix length)
# to the fist subnet connected to this router (defaults to fd00:255:be::/48)
#ip address add dev BELNET-lan0 "fde4:2:be::/48"

# Crude way to adapt the router configuration to the current group number 
#sed "s/##ASN##/2/" /etc/bird/bird6.conf.templ > /etc/bird/bird6.conf

# zebra is required to make the link between all FRRouting daemons
# and the linux kernel routing table
LD_LIBRARY_PATH=/usr/local/lib /usr/lib/frr/zebra -A 127.0.0.1 -f /etc/zebra.conf -z /tmp/${data['filename']}.api -i /tmp/${data['filename']}_zebra.pid &
# launching FRRouting OSPF daemon
LD_LIBRARY_PATH=/usr/local/lib /usr/lib/frr/ospf6d -f /etc/${data['filename']}_ospf.conf -z /tmp/${data['filename']}.api -i /tmp/${data['filename']}_ospf6d.pid -A 127.0.0.1
