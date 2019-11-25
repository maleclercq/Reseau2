#!/bin/bash

cd ..

sudo ./cleanup.sh > /dev/null 2>&1

sudo ./create_network.sh myNetwork > /dev/null 2>&1

cd verifEtatTopo

rm resultPING &> /dev/null
rm resultTraceRoute &> /dev/null
rm resultBGP &> /dev/null

sudo ./testPINGBase.sh >> resultPING
sudo ./testPINGOSPF.sh >> resultPING
sudo ./testPINGLoopback.sh >> resultPING
python readPING.py

sudo ./testTraceRoute.sh > resultTraceRoute
python readTraceRoute.py

sudo ./testBGP.sh &> resultBGP
python readBGP.py

