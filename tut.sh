#!/bin/bash
sourse conf.ini

while true
do
	wget -q http://pogoda.tut.by -o index.html
	grep -o 'span class="temp-i[+|-][0-9]\+' index.html | grep -o "[+|-][0-9]\+"
	sleep $Timeout
	rm index.html
done
