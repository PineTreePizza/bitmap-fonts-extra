#!/bin/sh

# This script will generate otb files out of bdf.
# You need fonttosfnt utility for that.

LIST=`ls -la *.bdf | awk '{print $9}'`
for font in $LIST
do
	otb=`echo $font | cut -d'.' -f1`
	otb="$otb.otb"
	fonttosfnt -b -c -g 2 -m 2 -o $otb  $font
done;
