#!/bin/bash
#an Experiment by Bhavya Tyagi(102097014)
#implementing reverse function to print if found
reverse(){
        reverse=""
        len=${#roll}
        for (( i=($len-1) ; i >= 0 ; i-- ))
        do
                reverse="$reverse${roll:$i:1}"
        done
        echo $reverse            
}
echo "Enter your Roll No to find the file: " 
read roll

filePath="./Rolllist"

while read fileLine
do
        if [[ "$fileLine" == "$roll" ]]
        then
		       echo $(reverse)
               exit 0 #exit if found
        fi
done < $filePath      

  
#if not found
echo "Roll number is not found in the file"

