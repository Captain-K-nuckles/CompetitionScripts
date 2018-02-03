#These are temporary until we know the scoring IP

if [[ $# -ne 1 ]]; then
	echo "Usage: $0 <Team Number>"
	exit 1
fi

teamnum=$1

#Flush all the tables
iptables -F
iptables -X

#Default Drop and Accept rules
iptables -P INPUT ACCEPT
iptables -P FORWARD DROP
iptables -P OUTPUT ACCEPT

for i in {1..11}; do
	if [[ $i != $teamnum ]]; then
		iptables -A INPUT -s 10.2.$i.10 -j DROP
		iptables -A INPUT -s 10.2.$i.20 -j DROP
		iptables -A INPUT -s 10.2.$i.30 -j DROP
		iptables -A INPUT -s 10.2.$i.40 -j DROP
		iptables -A INPUT -s 10.2.$i.50 -j DROP
		iptables -A INPUT -s 10.2.$i.60 -j DROP
		iptables -A INPUT -s 10.3.$i.10 -j DROP
		iptables -A INPUT -s 10.3.$i.20 -j DROP
	fi
done