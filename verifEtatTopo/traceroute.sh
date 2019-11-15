#!/bin/bash

cd ..
sudo ./connect_to.sh ./myNetwork_cfg/ R13 << EOF
traceroute6 fde4:2:0:bc::cc
exit
EOF

cd verifEtatTopo
