#!/bin/bash

REMOTEPATH='/volume1/Weismantel\ Daten/Pictures'
LOCALPATH='/var/www/html/photobooth-jacques42/data/images/*.jpg'

echo "Please enter remote directory on datafay (no blanks):"
read REMOTEDIR

REMOTEFOLDER="$REMOTEPATH/$REMOTEDIR"

echo "Initiate file transfer to remote dir $REMOTEFOLDER"

read -p "Continue (y/n)? " choice
case "$choice" in 
    y|Y )
	echo "yes"
	echo scp "$LOCALPATH" "weismao@datafay:$REMOTEFOLDER"
	scp $LOCALPATH weismao@datafay:"$REMOTEFOLDER"
	;;
    n|N )
	echo "no";;
    * ) echo "invalid";;
esac

