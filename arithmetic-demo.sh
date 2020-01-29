#!/bin/bash
#
# this script demonstrates doing arithmetic

# Task 1: Remove the assignments of numbers to the first and second number variables. Use one or more read commands to get 3 numbers from the user.
# Task 2: Change the output to only show:
#    the sum of the 3 numbers with a label
#    the product of the 3 numbers with a label

read -p "ENTER FIRST NUMBER  = " firstnum
read -p "ENTER SECOND NUMBER = " secondnum
read -p "ENTER THIRD NUMBER  = " thirdnum

#secondnum=2
sum=$((firstnum + secondnum + thirdnum))
product=$((firstnum * secondnum * thirdnum))

#fpmultiply=$(awk "BEGIN{printf \"%.2f\", $firstnum/$secondnum}")

cat <<EOF

$firstnum plus $secondnum plus $thirdnum is $sum
$firstnum multiped by $secondnum multiped by $thirdnum is $product
- More precisely, multiped value is $product
EOF
