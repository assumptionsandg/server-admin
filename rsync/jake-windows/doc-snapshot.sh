#!/bin/sh

#Test snapshot backup w/ rsync

who="assumptions" #Unix username
winwho="assumptions" #Windows username
opt="-aP --delete --quiet -e ssh"
src="/mnt/c/Users/$winwho/Documents/" #Backup source (for Windows /mnt/c/Users/$winwho/test)
dest="/local/assumptions-data/backups/windows/docs/" #Backup destination
date=`date "+%Y-%b-%d:_%T"`
origin="$who@10.3.0.3"

ionice -c 3 -p $$
renice +12  -p $$

rsync $opt $src $origin:/${dest}$date 
