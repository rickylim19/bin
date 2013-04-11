#/bin/sh -i

if test $# -eq 0
  then
    echo "You must supply at least one argument."
    exit 1
fi
if test -f "$1"
  then
    echo "$1 is an ordinary file in the working directory"
  else
    echo "$1 is not an ordinary file in the working directory"
fi
