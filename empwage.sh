#! /bin/bash

#Author : Ankita Angane
#Employee Wage Computation Program

#Start of program
echo "WELCOME to Employee Wage Computaion Program!"


#UC1:Check for attendance
#UC2:Calculating Daily Employee Wage
#UC3:Added part time employee wage

#Variables declaration
empAbsent=0
empRatePerHr=20
partTime=1
fullTime=2
empHr=0

ranCheck=$((RANDOM%3))

if [ $empAbsent -eq $ranCheck ]
then
        echo "Employee is absent"
	empHr=0
else
        echo "Employee is present"
	if [ $fullTime -eq $ranCheck ]
	then
		empHr=8
	else
		empHr=4
	fi
fi

salary=$(( empHr * empRatePerHr ))
echo "Salary of employee is $salary"

