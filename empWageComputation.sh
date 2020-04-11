#! /bin/bash
isAbsent=0;
isPresent=1;
isPartTime=2;
empStatus=$((RANDOM%3));
if [ $isPresent -eq $empStatus ]
then 
        echo "employee is present"
elif [ $empStatus -eq $isAbsent ]
then
        echo "employee is absent"
else
        echo "employee worked for 4 hours only"
fi

wagePerHour=20;
noOfHoursInDay=8;
totalDailyWage=$(($wagePerHour*$noOfHoursInDay ));
echo "$totalDailyWage";
partTimeHours=4;
totalPartTimeWage=$(( $wagePerHour * $partTimeHours ));
echo "$totalPartTimeWage";
