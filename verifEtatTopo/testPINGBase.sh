#!/bin/bash

i=0
n=10

chargement(){
    ((i++))
    str="Ping are testing for every link: ["

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

chargement


sudo ./connect_to.sh ./myNetwork_cfg/ R13 << EOF
echo "try ping: fde4:2:0:dd::d :" >> verifEtatTopo/resultPING
ping6 fde4:2:0:dd::d -c 5 >> verifEtatTopo/resultPING
echo "try ping: fde4:2:0:1d::1 :" >> verifEtatTopo/resultPING
ping6 fde4:2:0:1d::1 -c 5 >> verifEtatTopo/resultPING
echo "try ping: fde4:2:0:2d::2 :" >> verifEtatTopo/resultPING
ping6 fde4:2:0:2d::2 -c 5 >> verifEtatTopo/resultPING
exit
EOF

chargement


sudo ./connect_to.sh ./myNetwork_cfg/ R1 << EOF
echo "try ping: fde4:2:0:11::1 :" >> verifEtatTopo/resultPING
ping6 fde4:2:0:11::1 -c 5 >> verifEtatTopo/resultPING
echo "try ping: fde4:2:0:12::2 :" >> verifEtatTopo/resultPING
ping6 fde4:2:0:12::2 -c 5 >> verifEtatTopo/resultPING
echo "try ping: fde4:2:0:13::3 :" >> verifEtatTopo/resultPING
ping6 fde4:2:0:13::3 -c 5 >> verifEtatTopo/resultPING
exit
EOF

chargement


sudo ./connect_to.sh ./myNetwork_cfg/ R4 << EOF
echo "try ping: fde4:2:0:44::4 :" >> verifEtatTopo/resultPING
ping6 fde4:2:0:44::4 -c 5 >> verifEtatTopo/resultPING
echo "try ping: fde4:2:0:24::2 :" >> verifEtatTopo/resultPING
ping6 fde4:2:0:24::2 -c 5 >> verifEtatTopo/resultPING
echo "try ping: fde4:2:0:45::5 :" >> verifEtatTopo/resultPING
ping6 fde4:2:0:45::5 -c 5 >> verifEtatTopo/resultPING
echo "try ping: fde4:2:0:46::6 :" >> verifEtatTopo/resultPING
ping6 fde4:2:0:46::6 -c 5 >> verifEtatTopo/resultPING
echo "try ping: fde4:2:0:34::3 :" >> verifEtatTopo/resultPING
ping6 fde4:2:0:34::3 -c 5 >> verifEtatTopo/resultPING
exit
EOF

chargement


sudo ./connect_to.sh ./myNetwork_cfg/ R5 << EOF
echo "try ping: fde4:2:0:55::5 :" >> verifEtatTopo/resultPING
ping6 fde4:2:0:55::5 -c 5 >> verifEtatTopo/resultPING
echo "try ping: fde4:2:0:35::3 :" >> verifEtatTopo/resultPING
ping6 fde4:2:0:35::3 -c 5 >> verifEtatTopo/resultPING
echo "try ping: fde4:2:0:56::6 :" >> verifEtatTopo/resultPING
ping6 fde4:2:0:56::6 -c 5 >> verifEtatTopo/resultPING
echo "try ping: fde4:2:0:58::8 :" >> verifEtatTopo/resultPING
ping6 fde4:2:0:58::8 -c 5 >> verifEtatTopo/resultPING
echo "try ping: fde4:2:0:57::7 :" >> verifEtatTopo/resultPING
ping6 fde4:2:0:57::7 -c 5 >> verifEtatTopo/resultPING
exit
EOF

chargement


sudo ./connect_to.sh ./myNetwork_cfg/ R7 << EOF
echo "try ping: fde4:2:0:77::7 :" >> verifEtatTopo/resultPING
ping6 fde4:2:0:77::7 -c 5 >> verifEtatTopo/resultPING
echo "try ping: fde4:2:0:37::3 :" >> verifEtatTopo/resultPING
ping6 fde4:2:0:37::3 -c 5 >> verifEtatTopo/resultPING
echo "try ping: fde4:2:0:78::8 :" >> verifEtatTopo/resultPING
ping6 fde4:2:0:78::8 -c 5 >> verifEtatTopo/resultPING
echo "try ping: fde4:2:0:79::9 :" >> verifEtatTopo/resultPING
ping6 fde4:2:0:79::9 -c 5 >> verifEtatTopo/resultPING
echo "try ping: fde4:2:0:7b::b :" >> verifEtatTopo/resultPING
ping6 fde4:2:0:7b::b -c 5 >> verifEtatTopo/resultPING
exit
EOF

chargement


sudo ./connect_to.sh ./myNetwork_cfg/ R8 << EOF
echo "try ping: fde4:2:0:88::8 :" >> verifEtatTopo/resultPING
ping6 fde4:2:0:88::8 -c 5 >> verifEtatTopo/resultPING
echo "try ping: fde4:2:0:68::6 :" >> verifEtatTopo/resultPING
ping6 fde4:2:0:68::6 -c 5 >> verifEtatTopo/resultPING
echo "try ping: fde4:2:0:89::9 :" >> verifEtatTopo/resultPING
ping6 fde4:2:0:89::9 -c 5 >> verifEtatTopo/resultPING
exit
EOF

chargement


sudo ./connect_to.sh ./myNetwork_cfg/ R10 << EOF
echo "try ping: fde4:2:0:aa::a :" >> verifEtatTopo/resultPING
ping6 fde4:2:0:aa::a -c 5 >> verifEtatTopo/resultPING
echo "try ping: fde4:2:0:9a::9 :" >> verifEtatTopo/resultPING
ping6 fde4:2:0:9a::9 -c 5 >> verifEtatTopo/resultPING
echo "try ping: fde4:2:0:ab::b :" >> verifEtatTopo/resultPING
ping6 fde4:2:0:ab::b -c 5 >> verifEtatTopo/resultPING
echo "try ping: fde4:2:0:ac::c :" >> verifEtatTopo/resultPING
ping6 fde4:2:0:ac::c -c 5 >> verifEtatTopo/resultPING
exit
EOF

chargement


sudo ./connect_to.sh ./myNetwork_cfg/ R11 << EOF
echo "try ping: fde4:2:0:bb::b :" >> verifEtatTopo/resultPING
ping6 fde4:2:0:bb::b -c 5 >> verifEtatTopo/resultPING
echo "try ping: fde4:2:0:9b::9 :" >> verifEtatTopo/resultPING
ping6 fde4:2:0:9b::9 -c 5 >> verifEtatTopo/resultPING
echo "try ping: fde4:2:0:bc::c :" >> verifEtatTopo/resultPING
ping6 fde4:2:0:bc::c -c 5 >> verifEtatTopo/resultPING
exit
EOF

chargement


sudo ./connect_to.sh ./myNetwork_cfg/ R13 << EOF
echo "try ping: fde4:2:0:bc::c :" >> verifEtatTopo/resultPING
ping6 fde4:2:0:bc::c -c 5 >> verifEtatTopo/resultPING
echo "try ping: fde4:2:0:ac::c :" >> verifEtatTopo/resultPING
ping6 fde4:2:0:ac::c -c 5 >> verifEtatTopo/resultPING
exit
EOF

chargement


>&2 echo -ne "\n"

cd verifEtatTopo

