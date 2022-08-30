#!/bin/sh
#TEMPLATE FILE (INCOMPLETE)

#Test snapshot backup w/ rsync

who="assumptions"
opt="-aPh"
lnk="--link-dest=/snapshots/username/last/" 
src="/home/username/files/"
dest="/local/data/$who-data/"
last="/snapshots/username/last"
date=`date "+%Y-%b-%d:_%T"`
origin="$who@internal.hnet"

rsync $OPT $LINK $SRC ${SNAP}$date

rm -f $LAST

ln -s ${SNAP}$date $LAST
