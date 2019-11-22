#!/bin/bash

#sudo ./cleanup.sh > /dev/null 2>&1

#sudo ./create_network.sh myNetwork > /dev/null 2>&1

rm resultPING &> /dev/null
rm resultTraceRoute &> /dev/null
rm resultBGP &> /dev/null

#sudo ./testPING.sh >> resultPING
#python readPING.py

sudo ./testTraceRoute.sh > resultTraceRoute
python readTraceRoute.py

sudo ./testBGP.sh &> resultBGP
python readBGP.py
