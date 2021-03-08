echo "enter coefficients:"
read -p "a=" a
read -p "b=" b
read -p "c=" c

x1=$(echo "scale=2; ((-1*$b) + (sqrt(($b*$b)-(4*$a*$c))))/(2*$a)" | bc 2> /dev/null)
x2=$(echo "scale=2; ((-1*$b) - (sqrt(($b*$b)-(4*$a*$c))))/(2*$a)" | bc 2> /dev/null) 

if [[ $x1 == $null && $x2 == $null ]];then
    echo  "value of x cannot be found!!"
else
    echo  "x=$x1, $x2"
fi
