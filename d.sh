#!/bin/bash  
echo "This is a shell script"  
nitrogen --restore
exec picom 
#sudo ntpdate time.apple.com



while true; do
	WGET="/usr/bin/wget"

	$WGET -q --tries=20 --timeout=10 http://192.168.31.1 -O /tmp/router.idx &> /dev/null
	if [ ! -s /tmp/router.idx ]
	then
  	xsetroot -name  "Not Connected..!"
	else
   	xsetroot -name " $(date +%I:%M:%S__%A__%D) "
	fi
	sleep 0 
	done

