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

#UC4:Removed if-else condition and added case loop

case $ranCheck in
        $partTime)
                echo "Employee is present"
		empHr=4
                ;;
        $fullTime)
		echo "Employee is present"
                empHr=8
                ;;
        *)
		echo "Employee is absent"
                empHr=0
                ;;
esac

salary=$(( empHr * empRatePerHr ))
echo "Salary of employee is $salary"

