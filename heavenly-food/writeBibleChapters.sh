#!/bin/bash
month=$(date +"%m")
echo $month
declare FOLDER="daily-practices/2025/11-november/"
declare FILE=results.csv

cd $FOLDER

echo -n "Old testament: "
read amount chapters
echo -n "\"$(date +"%d.%m.%Y")\",$amount,$chapters," >> $FILE

echo -n "New testament: "
read amount chapters
echo "$amount,$chapters,,,,,," >> $FILE

echo -n "Commit and Push?: "
read answer
if [[ "$answer" =~ ^([yY][eE][sS]|[yY])$ ]]
then
	git add $FILE
	git commit -m  "feat: add results for today."
	git push origin master
fi
