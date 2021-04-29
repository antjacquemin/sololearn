#! /bin/bash

# 1 Let's Echo
echo "HELLO"

# 2 Looping and Skipping
for number in {1..99..2}
do
    echo $number
done

# 3 A Personalized Echo
read name
echo "Welcome $name"  

# 4 Looping with Numbers
for number in {1..50}
do
    echo $number
done

# 5 The World of Numbers
read a
read b
echo "$[a + b]"
echo "$[a - b]"
echo "$[a * b]"
echo "$[a / b]"

# 6 Comparing Numbers
read x
read y
if [[ x -gt y ]]
then
    echo "X is greater than Y"
elif [[ x -lt y ]]
then
    echo "X is less than Y"
else
    echo "X is equal to Y"
fi

# 7 Getting started with conditionals
read char
if [[ $char == "y" || $char == "Y" ]]
then
    echo "YES"
else
    echo "NO"
fi

# 8 More on Conditionals
read x
read y
read z
if [[ x -eq y && x -eq z ]]
then
    echo "EQUILATERAL"
elif [[ x -eq y || x -eq z || y -eq z ]]
then
    echo "ISOSCELES"
else
    echo "SCALENE"
fi

# 9 Arithmetic Operations
printf "%.3f" "$(bc -l)"

# 10

# 11