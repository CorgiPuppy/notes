#!/bin/bash

declare FOLDER_YEAR="2026"
declare FOLDER_MONTH="01-january"
declare FILE=results.csv

cd $FOLDER_YEAR/$FOLDER_MONTH

echo -n "Old Testament?: "
read answerOldTestament
if [[ "$answerOldTestament" =~ ^([yY][eE][sS]|[yY])$ ]]
then
	echo -ne "\tOld Testament: "
	read amount chapters
	echo -n "\"$(date +"%d.%m.%Y")\",$amount,$chapters," >> $FILE
fi

echo -n "New Testament?: "
read answerNewTestament
if [[ "$answerNewTestament" =~ ^([yY][eE][sS]|[yY])$ ]]
then
	echo -ne "\tNew Testament: "
	read amount chapters
	echo -n "$amount,$chapters," >> $FILE
fi

echo -n "Morning Revival?: "
read answerMorningRevival
if [[ "$answerMorningRevival" =~ ^([yY][eE][sS]|[yY])$ ]]
then
	echo -ne "\tMorning Revival: "
	read amount name
	echo -n "$amount,$name," >> $FILE
fi

echo -n "Ministry book?: "
read answerMinistryBook
if [[ "$answerMinistryBook" =~ ^([yY][eE][sS]|[yY])$ ]]
then
	echo -ne "\tMinistry book: "
	read amount name
	echo -n "$amount,$name," >> $FILE
fi

echo -n "Life-study?: "
read answerLifeStudy
if [[ "$answerLifeStudy" =~ ^([yY][eE][sS]|[yY])$ ]]
then
	echo -ne "\tLife-Study: "
	read amount name
	echo "$amount,$name," >> $FILE

	cd -
	typst compile --root . $FOLDER_YEAR/$FOLDER_MONTH/report/report.typ
fi
	
echo -n "Commit and Push?: "
read answer
if [[ "$answer" =~ ^([yY][eE][sS]|[yY])$ ]]
then
	git add .
	git commit -m  "feat: add results for today."
	git push origin master
fi
