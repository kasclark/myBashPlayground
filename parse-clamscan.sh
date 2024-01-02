#!/bin/bash

infected=$(clamscan | grep "Infected files:" | cut -d' ' -f3)

echo $infected

if [ $infected -ne "0" ] 
then
	echo "VIRUS DETECTED!"
fi
