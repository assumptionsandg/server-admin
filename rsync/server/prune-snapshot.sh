#!/bin/bash

#Prune backups to save disk space

limit=11 #1 more due to ls -l
dir=$1
cmd=$(ls -l $dir | wc -l)
old=$(ls -t $dir | tail -1)

if [ ${cmd} -gt ${limit} ] 
then
    rm -rf $dir/$old
fi
