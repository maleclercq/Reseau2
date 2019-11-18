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


sudo ./testPING.sh >> resultPING
python readFile.py

sudo ./testTraceRoute.sh >> resultTraceRoute


sudo ./testBGP.sh >> resultBGP
