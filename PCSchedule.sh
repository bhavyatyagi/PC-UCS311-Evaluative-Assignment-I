#!/bin/bash
#an Experiment by Bhavya Tyagi(102097014)
echo "Welcome to 2CSE2 Practical Computing Schedule"
echo -e "Menu--\n1.Monday\n2.Tuesday\n.\n.\n.6. Saturday\nEnter any other key to exit\n"
read ch

case $ch in
1) echo "No Lecture/Lab os 2CSE2 on Monday";;
2) echo "No Lecture/Lab os 2CSE2 on Tuesday";;
3) echo "No Lecture/Lab os 2CSE2 on Wednesday";;
4) echo "Practical computing Lecture is scheduled at 8:50 am" 
	echo "Practical computing Lab is scheduled at 2:40 pm";;

5) echo "No Lecture/Lab os 2CSE2 on Friday";;
6) echo "No Lecture/Lab os 2CSE2 on Saturday";;
7) echo "No Lecture/Lab os 2CSE2 on Sunday";;
*) echo "Invalid Choice entered!";;
esac

