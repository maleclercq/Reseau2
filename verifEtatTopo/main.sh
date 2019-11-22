#!/bin/bash

chargement(){
    ((i++))
    str="["

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

    str=$str"]\r"

    echo -ne "$str"
}

#sudo ./cleanup.sh > /dev/null 2>&1

#sudo ./create_network.sh myNetwork > /dev/null 2>&1


#sudo ./testPING.sh > resultPING
#python readPING.py

sudo ./testTraceRoute.sh > resultTraceRoute
python readTraceRoute.py

sudo ./testBGP.sh &> resultBGP
python readBGP.py
