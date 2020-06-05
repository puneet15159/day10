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
result3=$(($c+$a/$b))
result4=$(($a%$b+$c))

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
mysortdesc(){
for((i=${#array[@]}-1;i>=0; i--)); do
for((j=1;j<=$i; j++)); do
if [[ ${array[j-1]} -lt ${array[j]} ]]; then
temp="${array[j-1]}"
array[j-1]="${array[j]}"
array[j]="$temp"
fi
done
done
}

mysortdesc "$array"

echo "Sorted array descending order: ${array[@]}"
