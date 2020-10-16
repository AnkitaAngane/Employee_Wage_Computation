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
empHr2=0
totalEmpHr=0
noWorkingDays=20
totSalary=0
fullTimePre=0
partTimePre=0
absent=0
maxHr=100
totalDays=0

#UC4:Removed if-else condition and added case loop
#UC5:Calculating wage for a month
#UC6:Adding condition for total working Hr


function getWorkingHr() {

	case $1 in
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
	return $empHr

}

while [ $totalEmpHr -lt $maxHr -a $totalDays -lt $noWorkingDays ]
do

	totalDays=$(( totalDays + 1 ))
	getWorkingHr $((RANDOM%3))
	empHr2=`echo $?`
	totalEmpHr=$(( totalEmpHr + empHr2 ))
	salary=$(( empHr2 * empRatePerHr ))
	totSalary=$(( totalEmpHr * empRatePerHr ))
	sal[counter]=$salary
	totalSal[counter]=$totSalary
	counter=$(( counter + 1 ))
done


echo "EMPLOYEE DATA ::"
echo "FullTimePresent days : $fullTimePre  PartTimePresent days : $partTimePre  Absent days : $absent "
echo "Total Working Days : $totalDays  Total Working Hours : $totalEmpHr "
echo "Total Salary for 20 days is $totSalary"
echo "Array for Salary : ${sal[@]}"
echo "Array for Total Salary : ${totalSal[@]}"
