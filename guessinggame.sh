# BY Rui He 7/17/2022
# For Coursera Project
echo "Guess how many files are in the current directory? Enter below:"
read guess
status=2
answer=$(ls | wc -l)

while [ $status -eq 2 ]
do
	if [[ $guess -gt $answer ]]
	then
		echo "Guess bigger than actual. Make another guess."
		read guess
	elif [[ $guess -lt $answer ]]
	then
		echo "Guess smaller than actual. Make another guess."
		read guess
	else
		outputstr="You made it! The number is: $answer"
		echo $outputstr
		status=1
	fi
done
