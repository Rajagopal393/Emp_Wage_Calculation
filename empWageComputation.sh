#! /bin/bash
isPresent=1
empStatus=$((RANDOM%2))
if [ $isPresent -eq $empStatus ]
then 
        echo "employee is present"
else
        echo "employee is absent"
fi

wagePerHour=20
noOfHoursinDay=8
totalDailyWage=$(($wagePerHour*$noOfHoursinDay))
echo "$totalDailyWage"