read -p "Enter Number of prime number to find : " a 
count=0
    echo "$a Prime numbers are :"
    for ((i=2; $count<=a-1 ; i++))
    do
      max=$(bc <<< "scale=0; sqrt($i)")
      check=0

      for ((j=2; j<=$max; j++))
      do
        if (( $i % $j == 0))
        then
            check=1
            break
        fi
      done
      if [ $check -eq 0 ]
      then
          echo "$i   "
          ((count = count +1))
      fi
    done
read -p "Enter Number : " num
for((i=2; i<=num/2; i++))
do
  if [ $((num%i)) -eq 0 ]
  then
    echo "$num is not a prime number."
    exit
  fi
done
echo "$num is a prime number."
