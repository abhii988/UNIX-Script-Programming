#!/bin/bash
#Presetting design, string and number checker 
line="====================================="
isString="[a-zA-Z]"
isNumber="[0-9]"
tab="    "
#Asking for program's name
echo -e "$line"
echo -e " Please Enter the Program's Name: \c"
read program
#Validating if the Program's Name is empty or not.
while [[ $program == "" ]]
do
	if [ -z "$program" ]
	then
		echo -e "$line"
		echo -e " Error! Program name can't be empty!"
	fi
	echo -e "$line"
	echo -e " Please Enter the Program's Name:\c"
	read program
done
#Initializing counter
i=0
#Initializing SecretKey
skey="1234"
#Validating if the key is wrong and asking the user to input the key again for 5 times.
until [ ! $i -le 5 ]
do
	echo -e "$line"
	echo -e "Enter the SecretKey:\c" 
	read -s key
	if [[ $skey == $key ]]
	then
		echo -e "\n--------------------"
		echo -e " SecretKey matched!"
		echo -e "--------------------"
		break
	else
		echo -e "\n$line"
		echo -e " Wrong key! Please try again."
		echo -e "$line"
	fi
	((i++))
	if [[ i -eq 5 ]]
	then
		echo -e "$line==========="
		echo -e " Multiple wrong key inputted. Exiting $program!"
		echo -e "$line==========="
		echo -e " Press any key to exit."
		read key
		exit
	fi
done
#Validating if the name and ID parameters are valid or not.
if [ $# = 2 ]
then
	echo -e ""
	if [[ ! $1 =~ $isString ]]
	then
		echo -e "$line===============\n Invalid Name passed. Please run the program again.\n$line==============="
		exit
	fi
	if [[ ! $2 =~ $isNumber ]]
	then
		echo -e  "$line====================\n Invalid ID Number passed. Please run the program again.\n$line===================="
		exit
	fi
else
	echo -e "$line=======================\n Invalid parameter(s) passed. Please run the program again.\n$line======================="
	exit
fi
#Welcome screen of the program.
echo -e "\t\t$line========"
echo -e "\t\t\t\tWelcome to $program!"
echo -e "\t\t\t\tFirst Name: $1"
echo -e "\t\t\t\t ID Number: $2"
echo -e "\t\t Date/Time:$(date)"
echo -e "\t\t$line========"
echo -e ""
#Declaring function for tasks 4 to 11
function Task4to11() {
	#Displaying the five countries that plays Cricket, along with their codes.
	echo -e "$line="
	echo -e " Five countries who play Cricket are:"
	echo -e "$tab+~~~~~~~~~~~~~~~~~~~~~~~~~~~~+"
	echo -e "$tab| Countries   | Country-Code |"
	echo -e "$tab|~~~~~~~~~~~~~~~~~~~~~~~~~~~~|"
	echo -e "$tab|  Australia  |     AUS      |"
	echo -e "$tab|  Bangladesh |     BAN      |"
	echo -e "$tab|  Nepal      |     NEP      |"
	echo -e "$tab|  India      |     IND      |"
	echo -e "$tab|  England    |     ENG      |"
	echo -e "$tab\____________________________/"
	echo -e "$line"
	#Making the user guess for the best cricket team.
	echo -e "$tab Guess the best Cricket team. \n$tab (Enter the country code):\c"
	read Ans
	#Validating if the user inputs incorrect, empty or lowercase code and asking them until it is correct.
	while [[ ! $Ans == "IND" ]]
	do
		length=`expr length "$Ans"`
		if [ -z "$Ans" ]
		then
			echo -e "$line"
			echo -e " Error! Your guess cannot be empty!!"
		elif [[ ! $length -eq 3 || $Ans =~ [0-9a-z] ]]
		then
			echo -e "$line===="
			echo -e " Error! The code should be in uppercase."
		elif [[ $Ans == "AUS" || $Ans == "BAN" || $Ans == "NEP" || $Ans == "ENG" ]]
		then
			echo -e "$line"
			echo -e " $Ans is not the best cricket team."
		else
			echo -e "$line"
			echo -e " Please choose the code in the list!"
		fi
		echo -e "$line"
		echo -e "$tab Guess the best Cricket team. \n$tab (Enter the country code):\c"
		read Ans
	done
	#Displaying the correct guess along with a few description of the chosen team.
	echo -e "$line=="
	echo -e " Your guess is correct! India is the\n country with the best cricket team.\n They're top ranking with best points\n in test matches with a rating of 116.\n For more info please google about it."
	echo -e "$line=="
	#Declaring function to show the player's menu
	echo -e "$line"
	function PlayersMenu() {
	#Displaying the five star players of Cricket along with their codes.
		echo -e "  Five star players of Cricket are:"
		echo -e "   +~~~~~~~~~~~~~~~~~~~~~~~~~~~~+"
		echo -e "   |   Players    | Player-Code |"
		echo -e "   |~~~~~~~~~~~~~~~~~~~~~~~~~~~~|"
		echo -e "   | Paras Khadka |     PK      |"
		echo -e "   | Virat Kohli  |     VK      |"
		echo -e "   | David Warner |     DW      |"
		echo -e "   | Ben Stokes   |     BS      |"
		echo -e "   | Ross Taylor  |     RT      |"
		echo -e "   \____________________________/"
		echo -e "$line"
		#Taking list of 3 players' codes from the user and putting it in an array.
		echo -e " Now, select three player codes from\n the list that is visible up above.\n$tab Enter three players' codes\n$tab (separated by space):\c"
		read plyrs
		array=($plyrs)
		len=${#array[@]}
		#Validating if the codes in the array are empty or 3 and asking the user to enter the codes again. 
		if [[ ! len -eq 3 ]]
		then
			echo -e "$line"
			echo -e "  Invalid codes or Empty input.\n Please enter three valid codes."
			echo -e "$line"
			PlayersMenu
		fi
		#Validating if the codes are from the list or not.
		for item in $plyrs
		do
			if [[ $item == *"PK"* || $item == *"VK"* || $item == *"DW"* || $item == *"BS"* || $item == "RT" ]]
			then
				bool="false"
			else
				echo -e "$line"
				echo " $item not in list"
				bool="true"
			fi
		done
		if [[ $bool == "true" ]]
		then
			echo -e "$line"
			echo -e " Error! Please enter 3 valid codes."
			echo -e "$line"
			PlayersMenu
		fi
		#Putting the list of codes in an array. 
		array2=($plyrs)
		#Putting the array in a proper line of list by sorting them uniquely.
		uniqueList=$(printf "%s\n" "${array2[@]}" | sort -u )
		#Putting the unique list in an array and counting the length of them.
		uniqueList=($uniqueList)
		lenUniqueList=${#uniqueList[@]}
		#Validating if user has inserted repeating codes.
		if [[ ! lenUniqueList -eq 3 ]]
		then
			echo -e "$line"
			echo -e " Error! Repeated value(s) inserted."
			echo -e "$line"
			PlayersMenu
		fi
	}
	PlayersMenu

	echo -e "$line"
	echo -e " You inserted all the valid codes."
	echo -e "$line"
	#Asking the user to display info about the players that they selected.
	PS3=" Choose any one to display more info:"
	echo -e "  You selected: $plyrs"
	echo -e "$line"
	function Menu() {
		select option in $plyrs
		do
			#Validating if the user selects option that is not in the list.
			if [[ -z "$option" ]]
			then
				echo -e "$line"
				echo -e "$tab Error! Option out of range"
				echo -e "$line"
				continue
			else
				echo -e "$line"
				echo -e "  The option that you chose is $option." 
				echo -e "$line"
			fi
			break
		done
	}
	Menu
	#Asking the user if they want to repeat the program or not.
	function Repeat() {
		echo -e "$line"
		echo -e "Repeat the program again? (Yes/No):\c"
		read repeat
		echo -e "$line"
		case "$repeat" in
			"YES" | "Yes" | "yes" | "Y" | "y") 
				Task4to11
				;;
			"NO" | "No" | "no" | "N" | "n")
				echo -e "$line"
				echo -e "$tab Exiting the Program $program"
				echo -e "$line"
				read -p " Press Enter key to exit." k
				exit 1
				;;
			*)
				echo -e " Invalid Option"
				Repeat
				;;
		esac
	}
	#Displaying the info of the player from their file and calling function repeat.
	if [[ ! -e $option ]]
	then
		#Generating an error message if the file of the player doesn't exist.
		echo -e "$line"
		echo -e " Error! The file is either corrupted\n  or unreadable or does not exist!!"
		echo -e "$line"
		Task4to11
	elif [[ -r $option ]]
	then
		cat $option
		Repeat
	fi
}
Task4to11

