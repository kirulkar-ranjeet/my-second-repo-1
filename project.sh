#!/usr/bin/bash
echo $(ls -a) > file.txt
num_of_file="$(wc -w < file.txt)"
#echo $num_of_file

file_num() {
while [[ 1 ]]
do
echo "Please guess the number of file"
read guess
#echo $guess
	if [[ $guess -eq $num_of_file ]] 
	then
		echo "Your guess is right"
		eval echo "These are the file present $(ls -a){1..$num_of_file}"
		break
	elif [[ $guess -gt $num_of_file ]]
	then
		echo "Your guess is higher"
		echo "Try again"
	else
		echo "Your guess is lower"
		echo "Try again"
	fi
done
}

file_num $num_of_file
