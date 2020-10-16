#! /bin/bash

#Author : Ankita Angane
#Employee Wage Computation Program

#Start of program
echo "WELCOME to Employee Wage Computaion Program!"


#UC1:Check for attendance
empAbsent=0
ranCheck=$((RANDOM%3))

if [ $empAbsent -eq $ranCheck ]
then
        echo "Employee is absent"
else
        echo "Employee is present"
fi
