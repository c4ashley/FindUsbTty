#!/bin/bash

StartingDir=$PWD
Vendor=$1
Product=$2

cd /sys/bus/usb/devices

for file in ./*
do
	if [[ "$file" != *":"* ]]
	then
		if [[ `cat $file/idVendor` == "$Vendor" ]]
		then
			if [[ "`cat $file/idProduct`" == "$Product" ]]
			then
				cd "$file"
				file=${file:2}
				for ep in ./$file*
				do
#				if [[ -d "./$file:1.0" ]]
#				then
					if [[ -d "./$ep/tty" ]]
					then
						cd "./$ep/tty"
						for tty in ./*
						do
							if [[ -c "/dev/${tty:2}" ]]
							then
								echo "/dev/${tty:2}"
								exit 0
							fi
						done
					fi
#				fi
				done
				exit 0
			fi
		fi
	fi
done
exit 1
