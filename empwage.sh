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
noWorkingDays=20
totSalary=0
fullTimePre=0
partTimePre=0
absent=0

#UC4:Removed if-else condition and added case loop
#UC5:Calculating wage for a month

for (( day=1; day<=$noWorkingDays; day++ ))
do
	ranCheck=$((RANDOM%3))

	case $ranCheck in
        	$partTime)
                	partTimePre=$(( partTimePre + 1 ))
			empHr=4
                	;;
        	$fullTime)
			fullTimePre=$(( fullTimePre + 1 ))
                	empHr=8
                	;;
        	*)
			absent=$(( absent + 1 ))
                	empHr=0
                	;;
	esac

	salary=$(( empHr * empRatePerHr ))
	totSalary=$(( salary + totSalary ))
done

echo "EMPLOYEE DATA ::"
echo "FullTimePresent days : $fullTimePre  PartTimePresent days : $partTimePre  Absent days : $absent "
echo "Total Salary for 20 days is $totSalary"
