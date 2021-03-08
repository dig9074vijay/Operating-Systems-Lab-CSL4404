echo "Enter two numbers" 
read a b 
m=$a 
if [ $a -lt $b ] 
then 
m=$b 
fi 
while [ $m -gt 0 ] 
do 
x=`expr $a % $m` 
y=`expr $b % $m` 
if [ $x -eq 0 -a $y -eq 0 ] 
then 
echo "GCD of $a and $b is $m" 
break 
fi 
m=`expr $m - 1` 
done
