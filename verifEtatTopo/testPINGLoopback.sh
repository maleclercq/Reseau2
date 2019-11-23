#!/bin/bash

i=0
n=12

chargement(){
    ((i++))
    str="Ping are testing for Loopback: ["

    START=1
    END=$i
    for (( c=$START; c<=$END; c++ ))
    do
        str=$str"#"
    done

    z=$i+1
    for (( c=$z; c<=$n; c++ ))
    do
        str=$str" "
    done

    str=$str"]"
    tempo=$(expr $i \* 100)
    pourcent=$(expr $tempo / $n)
    str="$str$pourcent%\r"

    >&2 echo -ne "$str"
}



cd ..

#test reste loopback

sudo ./connect_to.sh ./myNetwork_cfg/ R2 << EOF
echo "try ping on loopback: fde4:2:0:22::2 :" >> verifEtatTopo/resultPING
ping6 fde4:2:0:22::2 -c 5 >> verifEtatTopo/resultPING
exit
EOF

chargement


sudo ./connect_to.sh ./myNetwork_cfg/ R3 << EOF
echo "try ping on loopback: fde4:2:0:33::3 :" >> verifEtatTopo/resultPING
ping6 fde4:2:0:33::3 -c 5 >> verifEtatTopo/resultPING
exit
EOF

chargement


sudo ./connect_to.sh ./myNetwork_cfg/ R4 << EOF
echo "try ping on loopback: fde4:2:0:44::4 :" >> verifEtatTopo/resultPING
ping6 fde4:2:0:44::4 -c 5 >> verifEtatTopo/resultPING
exit
EOF

chargement



sudo ./connect_to.sh ./myNetwork_cfg/ R5 << EOF
echo "try ping on loopback: fde4:2:0:55::5 :" >> verifEtatTopo/resultPING
ping6 fde4:2:0:55::5 -c 5 >> verifEtatTopo/resultPING
exit
EOF

chargement



sudo ./connect_to.sh ./myNetwork_cfg/ R6 << EOF
echo "try ping on loopback: fde4:2:0:66::6 :" >> verifEtatTopo/resultPING
ping6 fde4:2:0:66::6 -c 5 >> verifEtatTopo/resultPING
exit
EOF

chargement



sudo ./connect_to.sh ./myNetwork_cfg/ R7 << EOF
echo "try ping on loopback: fde4:2:0:77::7 :" >> verifEtatTopo/resultPING
ping6 fde4:2:0:33::3 -c 5 >> verifEtatTopo/resultPING
exit
EOF

chargement



sudo ./connect_to.sh ./myNetwork_cfg/ R8 << EOF
echo "try ping on loopback: fde4:2:0:88::8 :" >> verifEtatTopo/resultPING
ping6 fde4:2:0:33::3 -c 5 >> verifEtatTopo/resultPING
exit
EOF

chargement



sudo ./connect_to.sh ./myNetwork_cfg/ R9 << EOF
echo "try ping on loopback: fde4:2:0:99::9 :" >> verifEtatTopo/resultPING
ping6 fde4:2:0:99::9 -c 5 >> verifEtatTopo/resultPING
exit
EOF

chargement



sudo ./connect_to.sh ./myNetwork_cfg/ R10 << EOF
echo "try ping on loopback: fde4:2:0:aa::a :" >> verifEtatTopo/resultPING
ping6 fde4:2:0:aa::a -c 5 >> verifEtatTopo/resultPING
exit
EOF

chargement


sudo ./connect_to.sh ./myNetwork_cfg/ R11 << EOF
echo "try ping on loopback: fde4:2:0:bb::b :" >> verifEtatTopo/resultPING
ping6 fde4:2:0:bb::b -c 5 >> verifEtatTopo/resultPING
exit
EOF

chargement


sudo ./connect_to.sh ./myNetwork_cfg/ R12 << EOF
echo "try ping on loopback: fde4:2:0:cc::c :" >> verifEtatTopo/resultPING
ping6 fde4:2:0:cc::c -c 5 >> verifEtatTopo/resultPING
exit
EOF

chargement


sudo ./connect_to.sh ./myNetwork_cfg/ R13 << EOF
echo "try ping on loopback: fde4:2:0:dd::d :" >> verifEtatTopo/resultPING
ping6 fde4:2:0:dd::d -c 5 >> verifEtatTopo/resultPING
exit
EOF

chargement





>&2 echo -ne "\n"

cd verifEtatTopo

