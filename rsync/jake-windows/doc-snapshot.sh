#!/bin/sh

#Test snapshot backup w/ rsync

me="assumptions" #Unix username
winme="assumptions" #Windows username
tday=`date -I`
src="/mnt/c/Users/$winme/Documents/" #Backup source (for Windows /mnt/c/Users/$winwho/test)
dest="/local/$me-data/backups/windows/docs/$tday" #Backup destination
opt="-aP -e ssh"

origin="$me@10.3.0.3"

ionice -c 3 -p $$
renice +12  -p $$

rsync $opt $src $origin:${dest} 


