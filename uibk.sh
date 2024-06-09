#!bin/sh
SEP="•"

LANG=$( xset -q|grep LED| awk '{ if (substr ($10,5,1) == 1) print "[RU]"; else print "[EN]"; }' )
DATE_TIME=$(date +"%d.%m  $SEP  %H:%M")

xsetroot -rv -name " $SEP  $LANG  $SEP  $DATE_TIME  "
