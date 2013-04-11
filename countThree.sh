#/bin/sh -i

number=1

while [ $number -lt 4 ]
  do
    echo -n "[$number]"
    (( number +=1 ))
  done
echo
