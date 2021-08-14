#!/usr/bin/sh
servicedir="$()"

if [ $(whoami) == "root" ]; then
	sudo rm -rfv /usr/bin/setcharge
	sudo rm -rfv /usr/lib/systemd/system/setcharge.service
	sudo rm -rfv /etc/.battery.conf 
	echo "		Thanks for use it :)"
else
	echo "Please use root permission for this!"
fi

