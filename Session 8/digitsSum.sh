read -p "Enter the number" num
n=$num
sum=0
while [ $num -gt 0 ]
do
    mod=$((num % 10))    #It will split each digits
    sum=$((sum + mod))   #Add each digit to sum
    num=$((num / 10))    #divide num by 10.
done

rev=0

while [ $n -gt 0 ]
do
    sd=$(( $n % 10 ))
    rev=`expr $rev \* 10 + $sd` 
    n=$(( $n / 10 ))
done

echo The sum of digits is  $sum 
echo The Reverse of the number is $rev
