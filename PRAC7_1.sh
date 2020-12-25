#!/bin/bash

result=$(sudo repquota -a | awk '/^pepe/ { print $2 }')

char=${result:0:1}

i=0
while [ $i -lt 60 ]
do
	if [ $char=="+" ]
	then
		echo "L'usuari Pepe s'ha passat del límit de la quota :("
		echo -e "\n\n^D" | mail -s "Pepe, t'has passat del límit de la quota :(" pepe root
	fi
	i=$(($i+1))
	sleep 1
done
