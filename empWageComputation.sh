#! /bin/bash
isAbsent=0;
isPresent=1;
isPartTime=2;
workingHours=0;
workingDaysInMonth=20
for (( DaysPassed=1; DaysPassed <= $workingDaysInMonth; DaysPassed++ ))
do
    empStatus=$((RANDOM%3));
    case $empStatus in
        $isPresent)
            workingHours=$(($workingHours+ 8))
            ;;
        $isAbsent)
            workingHours=$(($workingHours+ 0))
            ;;
        $isPartTime)
            workingHours=$(($workingHours+ 4))
            ;;
    esac
done
wagePerHour=20;
totalDailyWage=$(($wagePerHour*$workingHours));
echo "$totalDailyWage";
