#!/bin/sh

#Template for rsync snapshots

who="template" #Unix username
winwho="template" #Windows username
opt="-aP --delete --quiet -e ssh"
src="/home/$who/test/" #Backup source (for Windows /mnt/c/Users/$winwho/test)
dest="/home/$who/test/" #Backup destination
date=`date "+%Y-%b-%d:_%T"`
origin="$who@internal.hnet" #interal.hnet is @hutchinson, replace with desired server.

ionice -c 3 -p $$
renice +12  -p $$

rsync $opt $src $origin:/${dest}$date 