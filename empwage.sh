#! /bin/bash

#Author : Ankita Angane
#Employee Wage Computation Program

#Start of program
echo "WELCOME to Employee Wage Computaion Program!"


#UC1:Check for attendance
#UC2:Calculating Daily Employee Wage

empAbsent=0
ranCheck=$((RANDOM%3))

if [ $empAbsent -eq $ranCheck ]
then
        echo "Employee is absent"
	salary=0
else
        echo "Employee is present"
	empRatePerHr=20
	empHr=8
	salary=$(( empHr * empRatePerHr ))
fi

echo "Salary of employee is $salary"

