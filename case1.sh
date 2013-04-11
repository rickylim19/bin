#/bin/sh -i

echo -n "Enter A, B, or C: "
read letter
case "$letter" in
  A|a)
    echo "You entered A"
    ;;
  B|b)
    echo "You entered B"
    ;;
  C|c)
    echo "You entered C"
    ;;
  *)
    echo "You entered shit, please choose something"
    ;;
esac

