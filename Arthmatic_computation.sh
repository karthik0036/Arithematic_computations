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
