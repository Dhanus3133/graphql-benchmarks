#!/bin/sh

# Function to calculate the average of numbers passed as arguments
function average() {
	echo $(numfmt --grouping "$@")
	# echo $("numfmt --grouping $@")
}
# Example usage
# numbers="57029929.54 92884998.8867 10386.0433"
numbers="1770.53"
result=$(average $numbers)

# Format numbers with commas
# formattedNumbers=$(echo $numbers | sed 's/\([[:digit:]]\{3\}\)\([[:digit:]]\{3\}\)\([[:digit:]]\{3\}\)/\1,\2,\3/g')
# echo -e 123456789 | awk '$0=gensub(/(...)/,"\\1,","g")' >README2.md
# echo 123456.789 | awk '{printf ("%'\''d\n", $0)}'
# echo 123456789 | awk '$0=gensub(/(...)/,"\\1,","g")'

# echo "Numbers: $numbers"
# echo "Average: $result"
# echo "$@" | awk LC_NUMERIC=en_US printf "%'.f\n" 123456789
# echo 1234567899289 | awk '$0=gensub(/(...)/,"\\1,","g"){sub(",$",""); print}'
# echo "Input: " $numbers
echo "A test: " $(numfmt --grouping "$numbers")
echo "REsult: " $result

# Write output to README2.md
echo -e "Numbers: 182,928.12 $formattedNumbers\\nAverage: $result" >README2.md
