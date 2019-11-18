#!/bin/bash

cd ..

sudo ./connect_to.sh ./myNetwork_cfg/ R6 << EOF
LD_LIBRARY_PATH=/usr/local/lib vtysh
show bgp summary
exit
EOF

cd verifEtatTopo
