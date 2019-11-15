#!/bin/bash
for router in `seq $1 $2`;
do
    # create all ospf configuration
    ./script_router.py -i JSON/r${router}.json -t ospf6d.mako -o R${router}/r${router}_ospf.conf
    echo "R${router} ospf  done"

    # create all zebra configuration
    ./script_router.py -i JSON/r${router}.json -t zebra.mako -o R${router}/r${router}_zebra.conf
    echo "R${router} zebra done"

    # create all start
    ./script_router.py -i JSON/r${router}.json -t start.mako -o R${router}_start
    chmod +x R${router}_start
done
