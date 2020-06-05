#!/bin/bash -x

function calc(){ awk "BEGIN { print "$*" }"; }

echo "Enter first number"
read a
echo "Enter second number"
read b
echo "Enter third number"
read c

result1=$(($a+$b*$c))
result2=$(($a*$b+$c))
result3=$(calc $c+$a/$b)
result4=$(calc $a%$b+$c)

#storing all the results in an dictiontry

declare -A ans

ans[1]=$result1
ans[2]=$result2
ans[3]=$result4
ans[4]=$result3

echo ${ans[@]}

for i in "${!ans[@]}"
do
  array[((counter++))]=${ans[$i]}
done

echo "${array[@]}"
