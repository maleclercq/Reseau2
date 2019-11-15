#!/bin/bash
for router in `seq $1 $2`;
do
    # create all ospf configuration
    ./script_router.py -i JSON/r${router}.json -t JSON/ospf6d.mako -o R${router}/r${router}_ospf.conf
    echo "R${router} ospf  done"

    # create all zebra configuration
    ./script_router.py -i JSON/r${router}.json -t JSON/zebra.mako -o R${router}/r${router}_zebra.conf
    echo "R${router} zebra done"
done
