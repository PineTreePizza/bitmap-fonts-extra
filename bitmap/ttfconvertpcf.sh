#!/bin/sh

# This script will generate ttf files out of pcf.
# You need fonttosfnt utility for that.

LIST=`ls -la *.pcf | awk '{print $9}'`
for font in $LIST
do
	ttf=`echo $font | cut -d'.' -f1`
	ttf="$ttf.ttf"
	fonttosfnt -b -c -g 2 -m 2 -o $ttf $font
done;
