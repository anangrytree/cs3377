#!/bin/bash

touch script3.sh
echo "#!/bin/bash" > script3.sh
echo 'rm -r `ls -d */`' >> script3.sh
echo "rm *" >> script3.sh
chmod 700 script3.sh
./script3.sh
echo "Files in this directory:"
ls
