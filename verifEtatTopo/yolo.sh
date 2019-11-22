#!/bin/bash
cd ..


for r in `seq 1 9`;
do
sudo ./connect_to.sh ./myNetwork_cfg/ R$r << EOF
echo 'try ping from R$r: fde4:2:0:ac::c :' >> verifEtatTopo/yoloSH
ping6 fde4:2:0:ac::c -c 5 >> verifEtatTopo/yoloSH
exit
EOF
done

sudo ./connect_to.sh ./myNetwork_cfg/ R13 << EOF
echo "try ping: fde4:2:0:ac::c :" >> verifEtatTopo/yoloSH
ping6 fde4:2:0:ac::c -c 5 >> verifEtatTopo/yoloSH
exit
EOF

for r in `seq 10 12`;
do
sudo ./connect_to.sh ./myNetwork_cfg/ R$r << EOF
echo "try ping: fde4:2:0:1d::d :" >> verifEtatTopo/yoloSH
ping6 fde4:2:0:1d::d -c 5 >> verifEtatTopo/yoloSH
exit
EOF
done



cd verifEtatTopo

