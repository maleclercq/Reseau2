#!/bin/bash

cd ..

sudo ./connect_to.sh ./myNetwork_cfg/ R1 << EOF
LD_LIBRARY_PATH=/usr/local/lib vtysh
show bgp summary
exit
EOF


sudo ./connect_to.sh ./myNetwork_cfg/ R3 << EOF
LD_LIBRARY_PATH=/usr/local/lib vtysh
show bgp summary
exit
EOF


sudo ./connect_to.sh ./myNetwork_cfg/ R11 << EOF
LD_LIBRARY_PATH=/usr/local/lib vtysh
show bgp summary
exit
EOF


sudo ./connect_to.sh ./myNetwork_cfg/ R6 << EOF
LD_LIBRARY_PATH=/usr/local/lib vtysh
show bgp summary
exit
EOF



cd verifEtatTopo
