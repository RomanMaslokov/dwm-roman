#!bin/sh
SEP="•"

LANG=$( xkblayout-state print "%s" )
DATE_TIME=$(date +"%d.%m  $SEP  %H:%M")

xsetroot -rv -name " $SEP  [ $LANG ]  $SEP  $DATE_TIME  "
