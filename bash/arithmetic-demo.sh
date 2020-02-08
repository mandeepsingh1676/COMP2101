#!/bin/bash
#
# this script demonstrates doing arithmetic

# Task 1: Remove the assignments of numbers to the first and second number var$
# Task 2: Change the output to only show:
#    the sum of the 3 numbers with a label
#    the product of the 3 numbers with a label

echo -n "Enter First number: "
read firstnum
echo -n "Enter Second number: "
read secondnum
echo -n "Enter third number: "
read thirdnum
sum=$((firstnum + secondnum + thirdnum))
product=$((firstnum * secondnum * thirdnum))

cat <<EOF
$firstnum plus $secondnum plus $thirdnum is $sum
$firstnum Multiplied by $secondnum and $thirdnum is $product
EOF


