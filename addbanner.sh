#!/bin/bash
script=$(basename $0)

if [ ! -r "$HOME/banner" ]
then
  echo "$script: need readable $HOME/banner file" 1>&2
  exit 1
fi

trap 'exit 1' 1 2 3 15
trap 'rm /tmp/$$.$script 2> /dev/null' 0

for file
do
  if [ -r "$file" -a -w "$file" ] 
  then
    cat $HOME/banner $file > /tmp/$$.$script
    cp /tmp/$$.$script $file
    echo "$script: banner added to $file" 1>&2
  else
    echo "$script: need read and write permission for $file" 1>&2
  fi
done
