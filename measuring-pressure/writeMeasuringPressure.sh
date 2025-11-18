#!/bin/bash
declare FOLDER="2025/11-november/"
declare FILE=results.csv

cd $FOLDER

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
fi

echo -n "Commit and Push?: "
read answerCommitAndPush
if [[ "$answerCommitAndPush" =~ ^([yY][eE][sS]|[yY])$ ]]
then
	git add $FILE

	echo -n "\tPush morning?: "
	read answerMorning
	if [[ "$answerMorning" =~ ^([yY][eE][sS]|[yY])$ ]]
	then
		git commit -m  "feat: add results for today's morning."
	fi

	echo -n "\tPush afternuon?: "
	read answerAfternuon
	if [[ "$answerAfternuon" =~ ^([yY][eE][sS]|[yY])$ ]]
	then
		git commit -m  "feat: add results for today's afternuon."
	fi

	echo -n "\tPush evening?: "
	read answerEvening
	if [[ "$answerEvening" =~ ^([yY][eE][sS]|[yY])$ ]]
	then
		git commit -m  "feat: add results for today's evening."
	fi
	
	git push origin master
fi
