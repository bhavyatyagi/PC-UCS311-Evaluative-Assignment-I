#!/bin/bash
#an experiment by Bhavya Tyagi(102097014)
echo "Welcome to Question 3"
echo "Enter file or directly name to be searched in home directory"
echo "or the path to be searched"

read name

#We're searching in home directory only as nothing is mentioned in the question
#User can enter path or the file/dir name present in home directory
if test -f "$name"
then
echo "This is a file"
elif test -d "$name"
then
echo "This is a directory"
else
echo "$name does not exists hence choose from the below options:"
printf "Do you want to create $name as a\n 1. file\n 2. directory\n Any other key to Do Nothing?"
read choice
case $choice in
1) touch $name
echo "$name as a file created";;
2) mkdir $name
echo "$name as a directory created";;
*) echo "Doing Nothing but exiting"
exit 0;;
esac
fi


