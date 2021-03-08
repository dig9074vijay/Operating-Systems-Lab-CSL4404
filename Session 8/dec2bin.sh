echo "Enter thei decimal number: "
read n
val=0
power=1
while [ $n  -ne 0 ]
       do
        r=`expr $n % 2`
        val=`expr $r \* $power + $val`
        power=`expr $power \* 10`
        n=`expr $n \/ 2`
      done
echo "Binary equivalent=$val"
echo "Enter any Binary no;"
read bino
len=${#bino} 
i=1
pow=$((len - 1 )) 
while [ $i -le $len ]
do
n=`echo $bino | awk '{ printf substr( $0,'$i',1 )}' `
j=1
p=1
while [ $j -le $pow ]
do
p=$(( p * 2 ))
j=$(( j + 1 ))
done
dec=$(( n * p ))
findec=$(( findec + dec ))
pow=$((pow - 1 ))
i=$(( i + 1 ))
done
echo "Equivalent Decimal no:"$findec
