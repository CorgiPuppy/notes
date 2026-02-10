#!/bin/bash

defineYear () {
	echo "All years: "
	find . -maxdepth 1 -type d -name '20*' | sort

	echo "What YEAR do you want to open a directory?"
	answers=(
		"1. 2025"
		"2. 2026"
	)
	for el in "${answers[@]}"
	do
		echo "$el"
	done
	echo -n "Write the number of your answer: "
	read answer

	flag=1
	while [ $flag -ne 0 ]
	do
		case $answer in
			1)
				year=$(echo "${answers[0]}" | cut -d' ' -f2)
				if [ -d "$year" ] 
				then
					cd $year
					flag=0
				else
					echo "There's no this directory."
					echo -n "Try again: "
					read answer
				fi
				;;
			2)
				year=$(echo "${answers[1]}" | cut -d' ' -f2)
				if [ -d "$year" ] 
				then
					cd $year
					flag=0
				else
					echo "There's no this directory."
					echo -n "Try again: "
					read answer
				fi
				;;
			*)
				echo "There's no this answer."
				echo -n "Try again: "
				read answer
				continue
				;;
		esac
	done
	echo -e '\n'
}

defineMonth () {
	echo "All months: "
	find . -maxdepth 1 -mindepth 1 -type d | sort

	echo "What MONTH do you want to open a directory?"
	answers=(
		"1. 01-january"
		"2. 02-february"
		"3. 03-march"
		"4. 04-april"
		"5. 05-may"
		"6. 06-june"
		"7. 07-july"
		"8. 08-august"
		"9. 09-september"
		"10. 10-october"
		"11. 11-november"
		"12. 12-december"
	)
	for el in "${answers[@]}"
	do
		echo "$el"
	done
	echo -n "Write the number of your answer: "
	read answer

	flag=1
	while [ $flag -ne 0 ]
	do
		case $answer in
			1)
				month=$(echo "${answers[0]}" | cut -d' ' -f2)
				if [ -d "$month" ] 
				then
					cd $month
					flag=0
				else
					echo "There's no this directory."
					echo -n "Try again: "
					read answer
				fi
				;;
			2)
				month=$(echo "${answers[1]}" | cut -d' ' -f2)
				if [ -d "$month" ] 
				then
					cd $month
					flag=0
				else
					echo "There's no this directory."
					echo -n "Try again: "
					read answer
				fi
				;;
			3)
				month=$(echo "${answers[2]}" | cut -d' ' -f2)
				if [ -d "$month" ] 
				then
					cd $month
					flag=0
				else
					echo "There's no this directory."
					echo -n "Try again: "
					read answer
				fi
				;;
			4)
				month=$(echo "${answers[3]}" | cut -d' ' -f2)
				if [ -d "$month" ] 
				then
					cd $month
					flag=0
				else
					echo "There's no this directory."
					echo -n "Try again: "
					read answer
				fi
				;;
			5)
				month=$(echo "${answers[4]}" | cut -d' ' -f2)
				if [ -d "$month" ] 
				then
					cd $month
					flag=0
				else
					echo "There's no this directory."
					echo -n "Try again: "
					read answer
				fi
				;;
			6)
				month=$(echo "${answers[5]}" | cut -d' ' -f2)
				if [ -d "$month" ] 
				then
					cd $month
					flag=0
				else
					echo "There's no this directory."
					echo -n "Try again: "
					read answer
				fi
				;;
			7)
				month=$(echo "${answers[6]}" | cut -d' ' -f2)
				if [ -d "$month" ] 
				then
					cd $month
					flag=0
				else
					echo "There's no this directory."
					echo -n "Try again: "
					read answer
				fi
				;;
			8)
				month=$(echo "${answers[7]}" | cut -d' ' -f2)
				if [ -d "$month" ] 
				then
					cd $month
					flag=0
				else
					echo "There's no this directory."
					echo -n "Try again: "
					read answer
				fi
				;;
			9)
				month=$(echo "${answers[8]}" | cut -d' ' -f2)
				if [ -d "$month" ] 
				then
					cd $month
					flag=0
				else
					echo "There's no this directory."
					echo -n "Try again: "
					read answer
				fi
				;;
			10)
				month=$(echo "${answers[9]}" | cut -d' ' -f2)
				if [ -d "$month" ] 
				then
					cd $month
					flag=0
				else
					echo "There's no this directory."
					echo -n "Try again: "
					read answer
				fi
				;;
			11)
				month=$(echo "${answers[10]}" | cut -d' ' -f2)
				if [ -d "$month" ] 
				then
					cd $month
					flag=0
				else
					echo "There's no this directory."
					echo -n "Try again: "
					read answer
				fi
				;;
			12)
				month=$(echo "${answers[11]}" | cut -d' ' -f2)
				if [ -d "$month" ] 
				then
					cd $month
					flag=0
				else
					echo "There's no this directory."
					echo -n "Try again: "
					read answer
				fi
				;;
			*)
				echo "There's no this answer."
				echo -n "Try again: "
				read answer
				continue
				;;
		esac
	done
}

defineYear
defineMonth
