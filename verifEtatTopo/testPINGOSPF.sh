#!/bin/bash

i=0
n=16

chargement(){
    ((i++))
    str="Ping are testing for OSPF: ["

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


#test de BGP

sudo ./connect_to.sh ./myNetwork_cfg/ R3 << EOF
ip link set dev R3-eth0 down
exit
EOF

chargement

sudo ./connect_to.sh ./myNetwork_cfg/ R3 << EOF
echo "try ping OSPF from R3 to: fde4:2:0:35::5 :" >> verifEtatTopo/resultPING
ping6 fde4:2:0:35::5 -c 5 >> verifEtatTopo/resultPING
exit
EOF

chargement

for r in `seq 1 9`;
do
sudo ./connect_to.sh ./myNetwork_cfg/ R$r << EOF
echo "try ping OSPF from R$r to: fde4:2:0:ac::c :" >> verifEtatTopo/resultPING
ping6 fde4:2:0:ac::c -c 5 >> verifEtatTopo/resultPING
exit
EOF
chargement
done

sudo ./connect_to.sh ./myNetwork_cfg/ R13 << EOF
echo "try ping OSPF from R$r to: fde4:2:0:ac::c :" >> verifEtatTopo/resultPING
ping6 fde4:2:0:ac::c -c 5 >> verifEtatTopo/resultPING
exit
EOF

chargement

for r in `seq 10 12`;
do
sudo ./connect_to.sh ./myNetwork_cfg/ R$r << EOF
echo "try ping OSPF from R$r to:: fde4:2:0:1d::d :" >> verifEtatTopo/resultPING
ping6 fde4:2:0:1d::d -c 5 >> verifEtatTopo/resultPING
exit
EOF
chargement
done

sudo ./connect_to.sh ./myNetwork_cfg/ R3 << EOF
ip link set dev R3-eth0 up
ip -6 addr add fde4:2:0:13::3/64 dev R3-eth0
exit
EOF

chargement

>&2 echo -ne "\n"

cd verifEtatTopo

