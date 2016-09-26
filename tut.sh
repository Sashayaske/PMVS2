#!/bin/bash
source conf.ini

while true
do
	wget -q http://pogoda.tut.by -O index.html
	grep -o 'span class="temp-i">[+|-][0-9]\+' index.html |  grep -o "[+|-][0-9]\+" | head -n 1
	sleep $Timeout
	rm index.html
done
