#!/bin/bash


if [[ $# -ne 2 ]]; then
	echo "Usage: $0 <Interface Name> <Scoring Engine IP>"
	exit 1
fi

interface=$1

scoringIP=$2


ifconfig $interface down

no=""
x=0
while [[ $no == "" ]]
do
	echo "Please enter one port number then hit enter (or type NO to stop): "
	read input
	if [[ $input == "NO" ]]; then
		no="no"
	else
		port[$x]=$input
	fi
	x=$((x + 1))
done


#Flush all the tables
iptables -F
iptables -X

#Default Drop and Accept rules
iptables -P INPUT DROP
iptables -P FORWARD DROP
iptables -P OUTPUT ACCEPT

for i in "${port[@]}"; do
	iptables -A INPUT -p tcp -s $scoringIP --dport $i -m state --state NEW,ESTABLISHED -j ACCEPT
done

iptables -A INPUT -p icmp --icmp-type 8 -s $scoringIP -m state --state NEW,ESTABLISHED,RELATED -j ACCEPT
iptables -A OUTPUT -p icmp --icmp-type 0 -s $scoringIP -m state --state ESTABLISHED,RELATED -j ACCEPT

ifconfig $interface up



