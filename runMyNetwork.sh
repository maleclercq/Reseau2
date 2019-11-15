#!/bin/bash

sudo ./cleanup.sh 
sudo ./create_network.sh myNetwork
sudo ./connect_to.sh ./myNetwork_cfg/ $1
