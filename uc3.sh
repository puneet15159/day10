  
#!/bin/bash

echo "Enter first number"
read a
echo "Enter second number"
read b
echo "Enter third number"
read c

result=$(($a*$b+$c))
echo "result is: $result"
