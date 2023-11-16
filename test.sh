#!/bin/bash

# Function to calculate the average of numbers passed as arguments
function average() {
	echo "$@" | awk '{for(i=1;i<=NF;i++) s+=$i; printf "%\047.2f\n", s/NF}'
}

# Example usage
# numbers="57029929.54 92884998.8867 10386.0433"
numbers="1770.53"
result=$(average $numbers)

# Format numbers with commas
formattedNumbers=$(echo $numbers | sed 's/\([[:digit:]]\{3\}\)\([[:digit:]]\{3\}\)\([[:digit:]]\{3\}\)/\1,\2,\3/g')
echo "The actual number ig" $numbers | sed 's/\([[:digit:]]\{3\}\)\([[:digit:]]\{3\}\)\([[:digit:]]\{3\}\)/\1,\2,\3/g'
echo 123456789 | awk '$0=gensub(/(...)/,"\\1,","g")'

echo "Numbers: 182,928.12 $formattedNumbers"
echo "Average: $result"

# Write output to README2.md
echo -e "Numbers: 182,928.12 $formattedNumbers\\nAverage: $result" >README2.md
