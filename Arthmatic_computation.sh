#!bin/bash -x

#TAKING INPUT FROM USER
read -p "Enter first input: " a;
read -p "Enter second input: " b;
read -p "Enter third input: " c;

#COMPUTE ARITHMETIC OPERATION
z=$(( $a + $(($b * $c))))
echo "Result:" $z

z1=$(( $(($a * $b)) + $c ))
echo "Result:" $z1

z2=$(( $c + $(($a / $b))))
echo "Result:" $z2

z3=$(( $($a % $b) + $c ))
echo "Result:" $z3

#STORING IN DICTIONARY

declare -A arthmaticOperation

arthmaticOperation[0]=$z
arthmaticOperation[1]=$z1
arthmaticOperation[2]=$z2
arthmaticOperation[3]=$z3
