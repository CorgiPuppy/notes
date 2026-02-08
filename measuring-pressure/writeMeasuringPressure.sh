#!/bin/bash
declare FOLDER_YEAR="2026"
declare FOLDER_MONTH="02-february"

declare FILE=results.csv

cd $FOLDER_YEAR/$FOLDER_MONTH

echo -n "Morning?: "
read answerMorning
if [[ "$answerMorning" =~ ^([yY][eE][sS]|[yY])$ ]]
then
	echo -n "Left hand at morning: "
	read pressureMorningLeft pulseMorningLeft
	echo -n "$(date +"%d.%m.%Y"),$pressureMorningLeft,$pulseMorningLeft," >> $FILE

	echo -n "Right hand at morning: "
	read pressureMorningRight pulseMorningRight
	echo -n "$pressureMorningRight,$pulseMorningRight," >> $FILE
fi

echo -n "Evening?: "
read answerEvening
if [[ "$answerEvening" =~ ^([yY][eE][sS]|[yY])$ ]]
then
	echo -n "Left hand at evening: "
	read pressureEveningLeft pulseEveningLeft
	echo -n "$pressureEveningLeft,$pulseEveningLeft," >> $FILE

	echo -n "Right hand at evening: "
	read pressureEveningRight pulseEveningRight
	echo "$pressureEveningRight,$pulseEveningRight" >> $FILE

	cd -
	typst compile --root . $FOLDER_YEAR/$FOLDER_MONTH/report/report.typ
	typst compile --root . $FOLDER_YEAR/report/report.typ
fi

echo -n "Commit and Push?: "
read answerCommitAndPush
if [[ "$answerCommitAndPush" =~ ^([yY][eE][sS]|[yY])$ ]]
then
	git add .

	echo -n -e "\tPush morning?: "
	read answerMorning
	if [[ "$answerMorning" =~ ^([yY][eE][sS]|[yY])$ ]]
	then
		git commit -m  "feat: add results for today's morning."
	fi

	echo -n -e "\tPush afternoon?: "
	read answerAfternoon
	if [[ "$answerAfternoon" =~ ^([yY][eE][sS]|[yY])$ ]]
	then
		git commit -m  "feat: add results for today's afternoon."
	fi

	echo -n -e "\tPush evening?: "
	read answerEvening
	if [[ "$answerEvening" =~ ^([yY][eE][sS]|[yY])$ ]]
	then
		git commit -m  "feat: add results for today's evening."
	fi
	
	git push origin master
fi
