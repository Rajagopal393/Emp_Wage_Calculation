#! /bin/bash
isAbsent=0;
isPresent=1;
isPartTime=2;
empStatus=$((RANDOM%3));

case $empStatus in
    $isPresent)
        workingHours=8
        ;;
    $isAbsent)
        workingHours=0
        ;;
    $isPartTime)
        workingHours=4
        ;;
esac

wagePerHour=20;
totalDailyWage=$(($wagePerHour*$workingHours));
echo "$totalDailyWage";
