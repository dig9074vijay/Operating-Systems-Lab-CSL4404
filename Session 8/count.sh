echo Enter a string
read str
words=`echo $str | wc -w`
words=`expr $words`
c=`echo $str | wc -c`
c=`expr $c - 1`
n=1
v=0
s=0
j=' '
while [ $n -le $c ] 
do
ch=`echo $str | cut -c $n`
if [[ $ch == $j ]]
then s=`expr $s + 1`
fi
case $ch in 'a'|'e'|'i'|'o'|'u'|'A'|'E'|'I'|'0'|'U' ) 
v=`expr $v + 1`
;;
esac
n=`expr $n + 1`
done
echo No. of words :$words
echo No. of vowels : $v
echo No. of white spaces :$s 
echo No. of chars :$c
cons=`expr $c - $v`
echo No. of consonent `expr $cons - $s`
