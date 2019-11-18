#!/bin/bash

cd ..

sudo ./connect_to.sh ./myNetwork_cfg/ R13 << EOF
traceroute6 fde4:2:0:bc::c
exit
EOF

sudo ./connect_to.sh ./myNetwork_cfg/ R4 << EOF
traceroute6 fde4:2:0:57::7
exit
EOF


cd verifEtatTopo
