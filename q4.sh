#!/bin/bash
#an Experiment by Bhavya Tyagi(102097014)

echo "Enter the number of rows for First Matrix"
read r1

echo "Enter the number of columns for First Matrix"
read c1

for (( i=0;i<$r1;i++ ))
do
	for (( j=0;j<$c1;j++ ))
	do
			printf "Enter ($i,$j) value for Matrix 1: "
			read val
			index=$(($i*$r1+$j))
			MAT1[$index]=$val
	done
done

echo "Enter the number of rows for Second Matrix"
read r2

echo "Enter the number of columns for Second Matrix"
read c2

if [ $c1 -ne $r2 ]
then
	printf "Matrix Multiplication is not possible Mathematically\nColumn 1 should be equal to Row 2";
	exit 0
fi 
for (( i=0;i<$r2;i++ ))
do
	for (( j=0;j<$c2;j++ ))
	do
			printf "Enter ($i,$j) value for Matrix 2: "
			read val
			index=$(($i*$r2+$j))
			MAT2[$index]=$val
	done
done
sum=0 
for (( i=0;i<r1;i++ ))
do 
	for (( j=0;j<c2;j++ ))
	do
		val1=$(($i*$r1+$j))
		for (( k=0;k<r2;k++ ))
		do
			val2=$(($i*$r1+$k))	val3=$(($k*$c1+$j))
			sum=$(($sum+${MAT1[$val2]}*${MAT2[$val3]}))
		done
	MAT3[$val1]=$sum
	sum=0
	done
done
printf "The Multiplication is Succesful, The Matrix becomes:\n"
for (( i=0;i<r1;i++ ))
do
	for (( j=0;j<c2;j++ ))
	do
		k=$(($i*$r1+$j))
		printf "${MAT3[$k]}\t"
	done
	printf "\n"
done
