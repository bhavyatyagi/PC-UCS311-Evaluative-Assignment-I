#!/bin/bash
#an Experiment by Bhavya Tyagi(102097014)

array=('Csed' 'Practical' 'Computing' 'UCS311' 'Tiet') 
#This is taken as given in the question 

#$SOLUTION OF PART B

echo "The output of follwoing commands are : "
echo ${array[0]:1} 	 #i)
echo ${array[@]:1:3} #ii)
echo ${array[1]:5:5} #iii)

#SOLUTION OF PART A
#echo "All elements except the first one is: (Check Script for Command)"
#echo ${array[@]:1}
#echo "Whereas all elements are: "
#echo ${array[@]} 

