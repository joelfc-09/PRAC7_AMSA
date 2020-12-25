#!/bin/bash

data=($(date))

if [ ${data[0]} == "sáb" -o ${data[0]} == "dom" ]
then
	if [ $((${data[1]})) -le $((7)) ]
	then
		exit 0
	fi
fi
sudo apt update
sudo apt upgrade 
