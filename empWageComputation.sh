#! /bin/bash
isAbsent=0;
isPresent=1;
isPartTime=2;
workingHours=0;
month=30
workingDaysInMonth=20
presentDays=0
maxHours=100
maxDays=20
for (( DaysPassed=1; DaysPassed <= $month; DaysPassed++ ))
do
    empStatus=$((RANDOM%3));
    case $empStatus in
        $isPresent)
            presentDays=$(($presentDays+1))
            workingHours=$(($workingHours+ 8))
            ;;
        $isAbsent)
            workingHours=$(($workingHours+ 0))
            ;;
        $isPartTime)
            workingHours=$(($workingHours+ 4))
            ;;
    esac
    if [ $workingHours -gt $maxHours ] || [ $presentDays -gt $maxDays ]
        then
            echo "limit reached...give him rest"
            break
    fi
done
wagePerHour=20;
totalDailyWage=$(($wagePerHour*$workingHours));
echo "$totalDailyWage is employee's earning ";
