#!bin/bash -x

#TAKING INPUT FROM USER
read -p "Enter first input: " a;
read -p "Enter second input: " b;
read -p "Enter third input: " c;

#COMPUTE ARITHMETIC OPERATION
z=$(( $a + $(($b * $c))))
echo "Result1:" $z

z1=$(( $(($a * $b)) + $c ))
echo "Result2:" $z1

z2=$(( $c + $(($a / $b))))
echo "Result3:" $z2

z3=$(( $($a % $b) + $c ))
echo "Result4:" $z3

#STORING IN DICTIONARY

declare -A arthmaticOperation

arthmaticOperation[z]=$z
arthmaticOperation[z1]=$z1
arthmaticOperation[z2]=$z2
arthmaticOperation[z3]=$z3

echo ${arthmaticOperation[@]}
echo ${!arthmaticOperation[@]}
echo ${#arthmaticOperation[@]}

#Storing dict values into array
for((i=0; i<=${#arthmaticOperation[@]}; i++))
do
  array[i]=${arthmaticOperation[z$((i+1))]}
done
#TO PRINT
echo "${array[@]}"

