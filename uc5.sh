  
#!/bin/bash

function calc(){ awk "BEGIN { print "$*" }"; }

echo "Enter first number"
read a
echo "Enter second number"
read b
echo "Enter third number"
read c

calc $a%$b+$c


