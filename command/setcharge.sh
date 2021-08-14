#!/usr/bin/sh
user=$(whoami)

if [ $user == "root" ]; then 
	if [ $1 -le 100 2> /dev/null ]; then 
		echo $1 > /etc/.battery.conf &!
		systemctl restart setcharge.service &!
	elif [ "$1" == "show-limit" ]; then
		echo "Battery limit : $(cat /sys/class/power_supply/BAT0/charge_control_end_threshold)"
	else 
		echo "Enter the number between 1 and 100!"
	fi
else
	echo "Please use root permission for this!"
fi

