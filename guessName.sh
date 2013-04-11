#/bin/sh -i

secretName=Ricky
name=noname
echo "Try to guess the name of the owner!"
echo
until [ "$name" = "$secretName" ]
do
  echo -n "Your guess: "
  read name
done
echo "Very goed"
