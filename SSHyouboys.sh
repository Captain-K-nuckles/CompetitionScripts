#!/bin/bash

#ssh into 10.2.X.10 10.2.X.50 10.2.X.60 10.3.X.10

apt=`command -v apt-get`
yum=`command -v yum`

if [ ! -z "$apt" ]; then
	apt-get install sshpass &> /dev/null
elif [ ! -z "$yum" ]; then
	yum install -y epel-release &> /dev/null
	yum install -y sshpass &> /dev/null
else
	echo "No supported pkg manager."
	exit 1;
fi

#password="Changeme-2018"
password="password"

sshpass -p "$password" ssh -o StrictHostKeyChecking=no aflickem@192.168.37.134 'echo "Hello and Goodbye"'


#for i in {1..20}
#do
#	sshpass -p "$password" ssh -o StrictHostKeyChecking=no root@10.2.$i.10 'echo "Hello and Goodbye"'
# 	sshpass -p "$password" ssh -o StrictHostKeyChecking=no root@10.2.$i.50 'echo "Hello and Goodbye"'
# 	sshpass -p "$password" ssh -o StrictHostKeyChecking=no root@10.2.$i.60 'echo "Hello and Goodbye"'
# 	sshpass -p "$password" ssh -o StrictHostKeyChecking=no root@10.3.$i.10 'echo "Hello and Goodbye"'
#done


