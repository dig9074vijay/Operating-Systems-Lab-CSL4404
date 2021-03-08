echo "Enter the string\n"
read mystring
count=0
echo -n "lengths of words: "; i=0;
for token in $mystring;
do
echo -n "${#token} "; i=$((i+1));
if [[ ${#token} -eq 5 ]]; then
#statements
count=`expr $count + 1`
fi
done; echo; echo "word count: $i"; echo "Words of 5-character length=$count"
