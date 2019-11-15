#!/bin/bash

sudo rm result
cd ..

sudo ./cleanup.sh > /dev/null 2>&1 

sudo ./create_network.sh myNetwork > /dev/null 2>&1

sudo ./connect_to.sh ./myNetwork_cfg/ R13 << EOF
echo "try ping: fde4:2:0:dd::d :" >> verifEtatTopo/result
ping6 fde4:2:0:dd::d -c 5 >> verifEtatTopo/result
echo "try ping: fde4:2:0:1d::1 :" >> verifEtatTopo/result
ping6 fde4:2:0:1d::1 -c 5 >> verifEtatTopo/result
echo "try ping: fde4:2:0:2d::2 :" >> verifEtatTopo/result
ping6 fde4:2:0:2d::2 -c 5 >> verifEtatTopo/result
exit

EOF&sudo ./connect_to.sh ./myNetwork_cfg/ R1 << EOF
echo "try ping: fde4:2:0:11::1 :" >> verifEtatTopo/result
ping6 fde4:2:0:11::1 -c 5 >> verifEtatTopo/result
echo "try ping: fde4:2:0:12::2 :" >> verifEtatTopo/result
ping6 fde4:2:0:12::2 -c 5 >> verifEtatTopo/result
echo "try ping: fde4:2:0:13::3 :" >> verifEtatTopo/result
ping6 fde4:2:0:13::3 -c 5 >> verifEtatTopo/result
exit
EOF

sudo ./connect_to.sh ./myNetwork_cfg/ R4 << EOF
echo "try ping: fde4:2:0:44::4 :" >> verifEtatTopo/result
ping6 fde4:2:0:44::4 -c 5 >> verifEtatTopo/result
echo "try ping: fde4:2:0:24::2 :" >> verifEtatTopo/result
ping6 fde4:2:0:24::2 -c 5 >> verifEtatTopo/result
echo "try ping: fde4:2:0:45::5 :" >> verifEtatTopo/result
ping6 fde4:2:0:45::5 -c 5 >> verifEtatTopo/result
echo "try ping: fde4:2:0:46::6 :" >> verifEtatTopo/result
ping6 fde4:2:0:46::6 -c 5 >> verifEtatTopo/result
echo "try ping: fde4:2:0:34::3 :" >> verifEtatTopo/result
ping6 fde4:2:0:34::3 -c 5 >> verifEtatTopo/result
exit
EOF

sudo ./connect_to.sh ./myNetwork_cfg/ R5 << EOF
echo "try ping: fde4:2:0:55::5 :" >> verifEtatTopo/result
ping6 fde4:2:0:55::5 -c 5 >> verifEtatTopo/result
echo "try ping: fde4:2:0:35::3 :" >> verifEtatTopo/result
ping6 fde4:2:0:35::3 -c 5 >> verifEtatTopo/result
echo "try ping: fde4:2:0:56::6 :" >> verifEtatTopo/result
ping6 fde4:2:0:56::6 -c 5 >> verifEtatTopo/result
echo "try ping: fde4:2:0:58::8 :" >> verifEtatTopo/result
ping6 fde4:2:0:58::8 -c 5 >> verifEtatTopo/result
echo "try ping: fde4:2:0:57::7 :" >> verifEtatTopo/result
ping6 fde4:2:0:57::7 -c 5 >> verifEtatTopo/result
exit
EOF


sudo ./connect_to.sh ./myNetwork_cfg/ R7 << EOF
echo "try ping: fde4:2:0:77::7 :" >> verifEtatTopo/result
ping6 fde4:2:0:77::7 -c 5 >> verifEtatTopo/result
echo "try ping: fde4:2:0:37::3 :" >> verifEtatTopo/result
ping6 fde4:2:0:37::3 -c 5 >> verifEtatTopo/result
echo "try ping: fde4:2:0:78::8 :" >> verifEtatTopo/result
ping6 fde4:2:0:78::8 -c 5 >> verifEtatTopo/result
echo "try ping: fde4:2:0:79::9 :" >> verifEtatTopo/result
ping6 fde4:2:0:79::9 -c 5 >> verifEtatTopo/result
echo "try ping: fde4:2:0:7b::b :" >> verifEtatTopo/result
ping6 fde4:2:0:7b::b -c 5 >> verifEtatTopo/result
exit
EOF


sudo ./connect_to.sh ./myNetwork_cfg/ R8 << EOF
echo "try ping: fde4:2:0:88::8 :" >> verifEtatTopo/result
ping6 fde4:2:0:88::8 -c 5 >> verifEtatTopo/result
echo "try ping: fde4:2:0:68::6 :" >> verifEtatTopo/result
ping6 fde4:2:0:68::6 -c 5 >> verifEtatTopo/result
echo "try ping: fde4:2:0:89::9 :" >> verifEtatTopo/result
ping6 fde4:2:0:89::9 -c 5 >> verifEtatTopo/result
exit
EOF


sudo ./connect_to.sh ./myNetwork_cfg/ R10 << EOF
echo "try ping: fde4:2:0:aa::a :" >> verifEtatTopo/result
ping6 fde4:2:0:aa::a -c 5 >> verifEtatTopo/result
echo "try ping: fde4:2:0:9a::9 :" >> verifEtatTopo/result
ping6 fde4:2:0:9a::9 -c 5 >> verifEtatTopo/result
echo "try ping: fde4:2:0:ab::b :" >> verifEtatTopo/result
ping6 fde4:2:0:ab::b -c 5 >> verifEtatTopo/result
echo "try ping: fde4:2:0:ac::c :" >> verifEtatTopo/result
ping6 fde4:2:0:ac::c -c 5 >> verifEtatTopo/result
exit
EOF


sudo ./connect_to.sh ./myNetwork_cfg/ R11 << EOF
echo "try ping: fde4:2:0:bb::b :" >> verifEtatTopo/result
ping6 fde4:2:0:bb::b -c 5 >> verifEtatTopo/result
echo "try ping: fde4:2:0:9b::9 :" >> verifEtatTopo/result
ping6 fde4:2:0:9b::9 -c 5 >> verifEtatTopo/result
echo "try ping: fde4:2:0:bc::c :" >> verifEtatTopo/result
ping6 fde4:2:0:bc::c -c 5 >> verifEtatTopo/result
exit
EOF


sudo ./connect_to.sh ./myNetwork_cfg/ R13 << EOF
echo "try ping: fde4:2:0:bc::c :" >> verifEtatTopo/result
ping6 fde4:2:0:bc::c -c 5 >> verifEtatTopo/result
echo "try ping: fde4:2:0:ac::c :" >> verifEtatTopo/result
ping6 fde4:2:0:ac::c -c 5 >> verifEtatTopo/result
exit
EOF

#test reste loopback

sudo ./connect_to.sh ./myNetwork_cfg/ R2 << EOF
echo "try ping: fde4:2:0:22::2 :" >> verifEtatTopo/result
ping6 fde4:2:0:22::2 -c 5 >> verifEtatTopo/result
exit
EOF

sudo ./connect_to.sh ./myNetwork_cfg/ R3 << EOF
echo "try ping: fde4:2:0:33::3 :" >> verifEtatTopo/result
ping6 fde4:2:0:33::3 -c 5 >> verifEtatTopo/result
exit
EOF

sudo ./connect_to.sh ./myNetwork_cfg/ R6 << EOF
echo "try ping: fde4:2:0:66::6 :" >> verifEtatTopo/result
ping6 fde4:2:0:66::6 -c 5 >> verifEtatTopo/result
exit
EOF

sudo ./connect_to.sh ./myNetwork_cfg/ R9 << EOF
echo "try ping: fde4:2:0:99::9 :" >> verifEtatTopo/result
ping6 fde4:2:0:99::9 -c 5 >> verifEtatTopo/result
exit
EOF

sudo ./connect_to.sh ./myNetwork_cfg/ R12 << EOF
echo "try ping: fde4:2:0:cc::c :" >> verifEtatTopo/result
ping6 fde4:2:0:cc::c -c 5 >> verifEtatTopo/result
exit
EOF

cd verifEtatTopo

