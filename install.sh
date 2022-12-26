#!/usr/bin/sh

if [ "$(whoami)" = "root" ]; then
	cp -rv command/setcharge.sh /usr/bin/setcharge
	cp -rv services/setcharge.service /usr/lib/systemd/system/setcharge.service
	cp -rv config/.battery.conf /etc/.battery.conf 
	echo "		Thanks for use it :)"
else
	echo "Please use root permission for this!"
fi

