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

# 10 Compute the Average
read N
total=0
for i in $(seq 1 $N)
do
    read number
    total=$[total + number]
done
printf "%.3f" $(echo "$total/$N" | bc -l)

# 11 Functions and Fractals - Recursive Trees - Bash! (To be revised)
read N
NMax=5
nbRows=63
nbColumns=100
# Arrays of power of 2 to avoid calculating them over and over
declare -A powers
for i in $(seq 0 $NMax)
do
    powers[$i]=$[2**i]
done
# Number or rows with only underscores
nbRowsDash=$nbRows
for i in $(seq 0 $[N - 1])
do
    nbRowsDash=$[nbRowsDash- powers[$[NMax - i]]]
done

if [[ nbColumns%2 -eq 0 ]]
then
    middle=$[nbColumns/2]
else
    middle=$[(nbColumns+1) / 2]
fi

for i in $(seq 1 $nbRowsDash)
do
    for j in $(seq 1 $nbColumns)
    do
        echo -n "_"
    done
    echo
done
for i in $(seq 1 $N)
do
    jMax=$[powers[$[NMax - i]]]
    for j in $(seq 1 $jMax)
    do
        indJ=$[jMax - j]
        for k in $(seq 1 $[middle - indJ - 2])
        do
            echo -n "_"
        done
        echo -n "1"
        for k in $(seq $[middle - indJ] $[middle + indJ])
        do
            echo -n "_"
        done
        echo -n "1"
        for k in $(seq $[middle + indJ + 2] $nbColumns)
        do
            echo -n "_"
        done
        echo
    done
    for j in $(seq 1 $jMax)
    do
        for k in $(seq 1 $[middle - 1])
        do
            echo -n "_"
        done
        echo -n "1"
        for k in $(seq 1 $[middle - 1])
        do
            for l in 
            echo -n "_"
        done
        for k in $(seq $[middle + 1] $nbColumns)
        do
            echo -n "_"
        done
        echo
        
    done
done